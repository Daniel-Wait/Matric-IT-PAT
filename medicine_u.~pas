unit medicine_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, patient_u;

type
  TfrmMedicine = class(TForm)
    btnDiabetic: TButton;
    btnRenal: TButton;
    btnGeneral: TButton;
    bmbBack: TBitBtn;
    //procedure btnGeneralClick(Sender: TObject);
    procedure btnDiabeticClick(Sender: TObject);
    //procedure btnRenalClick(Sender: TObject);
    procedure bmbBackClick(Sender: TObject);
  private
    procedure ToClinic;
  public
    iNext : integer;
  end;

var
  frmMedicine: TfrmMedicine;

implementation

uses depts_u;

{$R *.dfm}

//procedure TfrmMedicine.btnGeneralClick(Sender: TObject);
//begin
  //ToClinic;
  //iNext := 0;
//end;

procedure TfrmMedicine.ToClinic;
begin
  frmMedicine.Visible := False;
  frmPatientData.Show;
end;

procedure TfrmMedicine.btnDiabeticClick(Sender: TObject);
begin
  ToClinic;
  iNext := 1;
end;

//procedure TfrmMedicine.btnRenalClick(Sender: TObject);
//begin
  //ToClinic;
  //iNext := 2;
//end;

procedure TfrmMedicine.bmbBackClick(Sender: TObject);
begin
  frmMedicine.Close;
  frmDepts.Visible := True;
end;

end.
