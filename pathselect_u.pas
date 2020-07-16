unit pathselect_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, login_u, depts_u, dmHospitalDB_u, dbstaff_u, dbpatient_u,
  jpeg, ExtCtrls;

type
  TfrmPathSelect = class(TForm)
    lblUser: TLabel;
    lblAccessLevel: TLabel;
    btnDepts: TButton;
    bmbBack: TBitBtn;
    btnPatients: TButton;
    btnEmployees: TButton;
    Image1: TImage;
    procedure bmbBackClick(Sender: TObject);
    procedure btnDeptsClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnEmployeesClick(Sender: TObject);
    procedure btnPatientsClick(Sender: TObject);
  private
    { Private declarations }
  public
    sFN : string;
    sSN : string;
    iAL : integer;
  end;

var
  frmPathSelect: TfrmPathSelect;

implementation

{$R *.dfm}

procedure TfrmPathSelect.FormShow(Sender: TObject);
var
  sStaffNum : string;
begin
  sStaffNum := frmLogIn.sStaff;

  with dmHospital do
    begin
      qryHospitalDB.SQL.Clear;
      qryHospitalDB.SQL.Add('SELECT * FROM StaffInfo WHERE StaffNumber = ' + QuotedStr(sStaffNum));
      qryHospitalDB.Open;
      while NOT(qryHospitalDB.EOF) do
        begin
          if qryHospitalDB.RecordCount <> 1 then
            begin
              ShowMessage('Database Error: Unique Record Not Found');
              Exit;
            end
          else
            begin
              qryHospitalDB.First;
              sFN := qryHospitalDB['FirstName'];
              sSN := qryHospitalDB['Surname'];
              iAL := qryHospitalDB['AccessLevel'];
              qryHospitalDB.Next;
            end;
        end;
    end;
  lblUser.Caption := lblUser.Caption + sFN + ' ' + sSN;
  lblAccessLevel.Caption := lblAccessLevel.Caption + IntToStr(iAL);
end;

procedure TfrmPathSelect.bmbBackClick(Sender: TObject);
begin
  frmLogIn.Visible := True;
  frmPathSelect.Close;
end;

procedure TfrmPathSelect.btnDeptsClick(Sender: TObject);
begin
  frmPathSelect.Visible := False;
  frmDepts.Show;
end;

procedure TfrmPathSelect.btnEmployeesClick(Sender: TObject);
begin
  frmPathSelect.Visible := False;
  frmStaffDB.Show;
end;

procedure TfrmPathSelect.btnPatientsClick(Sender: TObject);
begin
  frmPathSelect.Visible := False;
  frmPatientDB.Show;
end;

end.
