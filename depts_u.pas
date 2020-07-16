unit depts_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, jpeg, ExtCtrls;

type
  TfrmDepts = class(TForm)
    lblUser: TLabel;
    lblJob: TLabel;
    btnAnst: TButton;
    btnPhys: TButton;
    btnUro: TButton;
    btnNeuro: TButton;
    btnOnG: TButton;
    btnHaem: TButton;
    btnPhrm: TButton;
    btnOnc: TButton;
    btnPed: TButton;
    btnOrth: TButton;
    btnMed: TButton;
    btnSurg: TButton;
    btnRad: TButton;
    btnENT: TButton;
    bmbBack: TBitBtn;
    procedure btnMedClick(Sender: TObject);
    procedure bmbBackClick(Sender: TObject);
  private
    { Private declarations }
  public
    iNext : integer;
  end;

var
  frmDepts: TfrmDepts;

implementation

uses pathselect_u, medicine_u;

{$R *.dfm}

procedure TfrmDepts.btnMedClick(Sender: TObject);
begin
  iNext := 5;
  frmDepts.Visible := False;
  frmMedicine.Show;
end;

procedure TfrmDepts.bmbBackClick(Sender: TObject);
begin
  frmDepts.Close;
  frmPathSelect.Visible := True;
end;

end.
