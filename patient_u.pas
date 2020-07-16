unit patient_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ComCtrls, Buttons, ExtCtrls, depts_u, dmHospitalDB_u;

type
  TfrmPatientData = class(TForm)
    pnlPatient: TPanel;
    lblPatientInfo: TLabel;
    lblD: TLabel;
    lblFolder: TLabel;
    edtFolder: TEdit;
    edtID: TEdit;
    BitBtn1: TBitBtn;
    redMedicalHistory: TRichEdit;
    dbgPatientInfo: TDBGrid;
    dbgBloodResults: TDBGrid;
    pnlPFinal: TPanel;
    btnNext: TBitBtn;
    btnClose: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
  private

    procedure LoadData;
    //procedure Anst;
    //procedure ENT;
    //procedure Haemo;
    procedure Med;
    //procedure Neuro;
    //procedure ObGyn;
    //procedure Onco;
    //procedure Orth;
    //procedure Ped;
    //procedure Phrm;
    //procedure Phys;
    //procedure Rad;
    //procedure Srg;
    //procedure Uro;
  public
    sFolder, sID : string;
    arrHistory : array[0..13] of string;
  end;

var
  frmPatientData: TfrmPatientData;
  sName, sSurname : string;
implementation

uses medicine_u, diabetic_u;

{$R *.dfm}

procedure TfrmPatientData.BitBtn1Click(Sender: TObject);
begin
  sFolder := edtFolder.Text;
  sID := edtID.Text;

  with dmHospital do
    begin
      if (qryHospitalDB.Locate('ID', sID,[])) AND (qryHospitalDB.Locate('FolderNumber', sFolder,[])) then
        begin
          qryHospitalDB.SQL.Clear;
          qryHospitalDB.SQL.Add('SELECT FirstName, Surname, ID, FolderNumber FROM PatientInfo WHERE ID = ' + QuotedStr(sID) + ' AND FolderNumber = ' + QuotedStr(sFolder));
          qryHospitalDB.Open;
          qryHospitalDB.First;
          sName := qryHospitalDB['FirstName'];
          sSurname := qryHospitalDB['Surname'];
          ShowMessage('Loading Data for ' + sName + ' ' + sSurname); //Displays patient's full name with confirmation message
          LoadData; //procedure which contains procedures to load each object separatley
        end
      else
        begin
          edtFolder.Clear;
          edtID.Clear;
          ShowMessage('Folder Number and ID do not match any existing records.');
        end;
    end;
end;

procedure TfrmPatientData.LoadData;
var
  cFirst : char;
  tMed : TextFile;
  bFound, bStop : boolean;
  iProblem, iRow, K, J, L, iCol : integer;
  sOut, sLine, sRec, sHeader : string;
begin

  //Access Levels need to be applied
  //dbgPatientInfo
  with dmHospital do
    begin
     qryHospitalDB.SQL.Clear;
     qryHospitalDB.SQL.Add('SELECT * FROM PatientInfo');
     qryHospitalDB.Open;
    end;

  //dbgBloodResults
  with dmHospital do
    begin
     qryMinor.SQL.Clear;
     qryMinor.SQL.Add('SELECT * FROM BloodResults');
     qryMinor.Open;
    end;


  //redMedicalHistory
  bStop := False;
  redMedicalHistory.Lines.Clear;
  redMedicalHistory.Lines.Add('MEDICAL HISTORY' + #13 + ' ' + #13);
  AssignFile(tMed, sFolder + '.txt');

  Try
    Reset(tMed);
  Except
    ShowMessage('Unable to locate file.');
    Exit;
  End;

  while NOT(EOF(tMed)) AND NOT(bStop) do
    begin
      Readln(tMed, sLine);
      Val(sLine, K, iProblem);

      if iProblem <> 0 then
        bStop := True
      else
        begin

          while (bStop = False) do
            begin
              Readln(tMed, sLine);
              cFirst := sLine[1];

              if NOT(cFirst IN ['*',':','>','+','-']) then
                begin
                  arrHistory[K] := arrHistory[K] + #13 + sLine;
                end;

              if (cFirst = '*') then
                begin
                  Delete(sLine, 1, 1);
                  sLine := ' ';
                  arrHistory[K] := arrHistory[K] + #13 + sLine;
                  bStop := True;
                end;

              if (cFirst = ':') then
                begin
                  Delete(sLine, 1, 1);
                  sLine := 'Date: ' + sLine;
                  arrHistory[K] := arrHistory[K] + #13 + sLine;
                end;

              if (cFirst = '>') then
                begin
                  Delete(sLine, 1, 1);
                  sLine := 'Medication: ' + sLine;
                  arrHistory[K] := arrHistory[K] + #13 + sLine;
                end;

              if (cFirst = '+') then
                begin
                  Delete(sLine, 1, 1);
                  sLine := 'Notes: ' + sLine;
                  arrHistory[K] := arrHistory[K] + #13 + sLine;
                end;

              if (cFirst = '-') then
                begin
                  Delete(sLine, 1, 1);
                  sLine := 'Seen By: ' + sLine;
                  arrHistory[K] := arrHistory[K] + #13 + sLine;
                end;
            end;
        end;
    end;

    for J := 0 to 13 do
      begin
        case J of
          0: sHeader := 'General';
          1: sHeader := 'CardioCirculatory';
          2: sHeader := 'Endocrine';
          3: sHeader := 'ENT';
          4: sHeader := 'GastroIntestinal';
          5: sHeader := 'GenitoUrinary';
          6: sHeader := 'Macrovascular';
          7: sHeader := 'Microvascular';
          8: sHeader := 'MuscularSkeletal';
          9: sHeader := 'Neurological';
          10: sHeader := 'Opthalmology';
          11: sHeader := 'Respiratory';
          12: sHeader := 'Rheumotology';
          13: sHeader := 'Unidentified Issue';
        end;

        redMedicalHistory.Lines.Add(sHeader);
        redMedicalHistory.Lines.Add(arrHistory[J]);
        redMedicalHistory.Lines.Add(' ');
      end;
  btnNext.Visible := True;
  CloseFile(tMed);
end;

procedure TfrmPatientData.FormShow(Sender: TObject);
begin
  //Insert Access level Code
  with dmHospital do
    begin
     qryHospitalDB.SQL.Clear;
     qryHospitalDB.SQL.Add('SELECT * FROM PatientInfo');
     qryHospitalDB.Open;
    end;
end;

procedure TfrmPatientData.btnNextClick(Sender: TObject);
begin
  //case frmDepts.iNext of
    //0: Anst;
    //1: ENT;
    //2: Haemo;
    //3: Med;
    //4: Neuro;
    //5: ObGyn;
    //6: Onco;
    //7: Orth;
    //8: Ped;
    //9: Phrm;
    //10: Phys;
    //11: Rad;
    //12: Srg;
    //13: Uro;
  //end;
  Med;
end;

procedure TfrmPatientData.Med;
begin
  //case frmMedicine.iNext of
    //0: frmGeneral.Show;
    //1: frmDiabetic.Show;
    //2: frmRenal.Show;
    //end;
  frmPatientData.Visible := False;
  frmDiabetic.Show;
end;

end.
