unit login_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, jpeg;

type
  TfrmLogIn = class(TForm)
    imgDeptHealth: TImage;
    ledStaffNo: TLabeledEdit;
    ledPass: TLabeledEdit;
    btnLogIn: TButton;
    procedure btnLogInClick(Sender: TObject);
  private
    procedure LogFalse(sMsg :string);
    procedure LogTrue;
  public
    sPass, sStaff : string;
  end;

var
  frmLogIn: TfrmLogIn;

implementation

uses pathselect_u;

{$R *.dfm}

procedure TfrmLogIn.btnLogInClick(Sender: TObject);
var
  tFile : TextFile;
  bFound : boolean;
  sLine, sFileNo, sFilePass, sMessage : string;
  iPos : integer;
begin
  sPass := ledPass.Text;
  sStaff := ledStaffNo.Text;
  sMessage := '';
  bFound := False;

  AssignFile(tFile, 'login.txt');

  Try
    Reset(tFile);
  Except
    ShowMessage('File Not Found');
    Exit;
  End;

  while (NOT EOF(tFile)) AND (bFound = False) do
    begin
      Readln(tFile, sLine);
      iPos := Pos(',', sLine);
      sFileNo := Copy(sLine, 1, (iPos-1));
      Delete(sLine, 1, (iPos + 1));
      sFilePass := sLine;

      if (sStaff = sFileNo) then
        begin
          bFound := True;
          if (sPass = sFilePass) then
            begin
              LogTrue;
            end
          else
            begin
              sMessage := 'Invalid Password!';
              LogFalse(sMessage);
            end;
        end;
    end;
  CloseFile(tFile);
  if (bFound = False) then
    begin
      sMessage := 'Invalid Staff Number!';
      LogFalse(sMessage);
    end;
end;

procedure TfrmLogIn.LogFalse(sMsg: string);
begin
  ShowMessage('Error: ' + sMsg);
  ledStaffNo.Text := '';
  ledStaffNo.SetFocus;
  ledPass.Text := '';
end;

procedure TfrmLogIn.LogTrue;
begin
  ledStaffNo.Text := '';
  ledStaffNo.SetFocus;
  ledPass.Text := '';
  ShowMessage('Log On Successful!');
  frmLogIn.Visible := False;
  frmPathSelect.Show;
end;

end.
