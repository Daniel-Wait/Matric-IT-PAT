unit newpatient_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, Spin, StdCtrls, ExtCtrls, CheckLst;

type
  TfrmNewPatient = class(TForm)
    lblAge: TLabel;
    lblNoK: TLabel;
    btnEnter: TButton;
    ledID: TLabeledEdit;
    LabeledEdit1: TLabeledEdit;
    ledCell: TLabeledEdit;
    ledSurname: TLabeledEdit;
    ledName: TLabeledEdit;
    ledNoKContact: TLabeledEdit;
    ledNoKName: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    ledNoKRelationship: TLabeledEdit;
    ledNoKSurname: TLabeledEdit;
    ledNoKID: TLabeledEdit;
    rgpGender: TRadioGroup;
    sedAge: TSpinEdit;
    bmbCancel: TBitBtn;
    clxGeneralHealth: TCheckListBox;
    CheckListBox1: TCheckListBox;
    procedure bmbCancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmNewPatient: TfrmNewPatient;

implementation

{$R *.dfm}

procedure TfrmNewPatient.bmbCancelClick(Sender: TObject);
begin
  frmNewPatient.Close;
end;

end.
