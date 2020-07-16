unit dbpatient_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, dmHospitalDB_u, newpatient_u;

type
  TfrmPatientDB = class(TForm)
    ledFilterValue: TLabeledEdit;
    btnFilter: TButton;
    bmBack: TBitBtn;
    btnNewPatient: TButton;
    Button1: TButton;
    ComboBox1: TComboBox;
    dbgPatientDB: TDBGrid;
    procedure btnNewPatientClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPatientDB: TfrmPatientDB;

implementation

{$R *.dfm}

procedure TfrmPatientDB.btnNewPatientClick(Sender: TObject);
begin
  frmNewPatient.Show;
end;

end.
