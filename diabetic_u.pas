unit diabetic_u;

interface

uses
  Windows, Messages, DateUtils, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Spin, Grids, DBGrids, dmHospitalDB_u, patient_u, clsPatient_u,
  Buttons, pathselect_u;

type
  TfrmDiabetic = class(TForm)
    pnlMeasure: TPanel;
    lblHeight: TLabel;
    lblWeight: TLabel;
    lblWaist: TLabel;
    lblHR: TLabel;
    lblMeasurements: TLabel;
    sedHR: TSpinEdit;
    pnlBP: TPanel;
    lblSystolic: TLabel;
    lblDiastolic: TLabel;
    lblBP: TLabel;
    sedSystolic: TSpinEdit;
    sedDiastolic: TSpinEdit;
    pnlGlucose: TPanel;
    lblBG: TLabel;
    lblFasting: TLabel;
    lblPP: TLabel;
    lblOvernight: TLabel;
    edtOvernight: TEdit;
    edtFasting: TEdit;
    pnlVascular: TPanel;
    lblVascular: TLabel;
    cbxMicro: TCheckBox;
    cbxMacro: TCheckBox;
    lblPM: TLabel;
    lblNotes: TLabel;
    rgpPills: TRadioGroup;
    rgpInsulin: TRadioGroup;
    ledInsDos: TLabeledEdit;
    btnCheck: TButton;
    redCheck: TRichEdit;
    pnlFinal: TPanel;
    edtPP: TEdit;
    dbgDiabetc: TDBGrid;
    lblDiabeticRecords: TLabel;
    rgpClassification: TRadioGroup;
    pnlHbA1c: TPanel;
    lblA1cLevel: TLabel;
    lblHbA1c: TLabel;
    cbxHbA1c: TCheckBox;
    edtHbA1c: TEdit;
    sedWaist: TSpinEdit;
    sedWeight: TSpinEdit;
    bmbDone: TBitBtn;
    bmbRetry: TBitBtn;
    bmbBack: TBitBtn;
    sedHeight: TSpinEdit;
    memNotes: TMemo;
    procedure FormShow(Sender: TObject);
    procedure btnCheckClick(Sender: TObject);
    procedure bmbDoneClick(Sender: TObject);
    procedure memNotesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDiabetic: TfrmDiabetic;
  objDiabetic : TDiabeticPatient;
  cGender : char;
  tMed : TextFile;
  sToStr, sStringNote, sDate, sDiabeticDiagnosis, sGender, sPills, sInsulin : string;
  bMacrovascular, bMicrovascular, bEpi, bAsm, bTB, bHypTns, bInsulin : boolean;
  iHeight, iAge, iDiastolic, iSystolic, iHeartRate, iWeight, iWaist : integer;
  rBMI, rHbA1c, rFasting, rPostprandial, rOverNight, rHeight, rInsulinDosage : real;

implementation

{$R *.dfm}

procedure TfrmDiabetic.FormShow(Sender: TObject);
begin
  with dmhospital do
    begin
      qryMinor.SQL.Clear;
      qryMinor.SQL.Add('SELECT * FROM DiabeticClinic WHERE FolderNumber = "' + frmPatientData.sFolder + '" ORDER BY Date DESC');
      qryMinor.Open;
    end;
end;

procedure TfrmDiabetic.btnCheckClick(Sender: TObject);
var
  I : integer;
begin
  if (rgpClassification.ItemIndex < 0) then
    begin
      ShowMessage('An appropriate classification must be selected for the notes!');
      Exit;
    end;

  if (rgpInsulin.ItemIndex < 0) then
    begin
      ShowMessage('The form is incomplete. Insulin choice undefined.');
      Exit;
    end;

  if (rgpPills.ItemIndex < 0) then
    begin
      ShowMessage('The form is incomplete. Insulin choice undefined.');
      Exit;
    end;

  bInsulin := True;
  iDiastolic := sedDiastolic.Value;
  iSystolic := sedSystolic.Value;
  rFasting := StrToFloat(edtFasting.Text);
  rOverNight := StrToFloat(edtOvernight.Text);
  rPostprandial := StrToFloat(edtPP.Text);
  iHeight := sedHeight.Value;
  rHeight := iHeight / 100;
  iHeartRate := sedHR.Value;
  iWeight := sedWeight.Value;
  iWaist := sedWaist.Value;


  if (cbxMicro.Checked = True) then
    begin
      bMicrovascular := True;
    end
  else
    begin
      bMicrovascular := False;
    end;

  if (cbxMacro.Checked = True) then
    bMacrovascular := True
  else bMacrovascular := False;

  case rgpPills.ItemIndex of
    0: sPills := 'Netforeman';
    1: sPills := 'Glimepramide';
    2: sPills := 'Glyclozide';
    3: sPills := 'Glibenclamide';
    4: sPills := 'No Pills';
  end;

  case rgpInsulin.ItemIndex of
    0: sInsulin := 'Rapid Acting Insulin';
    1: sInsulin := 'Short Acting Insulin';
    2: sInsulin := 'Long Acting Insulin';
    3: sInsulin := 'Ultra-Long Acting Insulin';
    4: sInsulin := 'Actrofane';
    5: sInsulin := 'Humolog';
    6: sInsulin := 'Insuman';
    7:  begin
          sInsulin := 'No Insulin';
          bInsulin := False;
        end;
  end;

  if (bInsulin = True) then
    begin
      rInsulinDosage := StrToFloat(ledInsDos.Text);
    end
  else
    begin
      rInsulinDosage :=  0;
    end;


  with dmHospital do
    begin
      qryMinor.SQL.Clear;
      qryMinor.SQL.Add('SELECT * FROM GeneralHealth WHERE ID = "' + frmPatientData.sID + '"');
      qryMinor.Open;
      qryMinor.First;
      sDiabeticDiagnosis := DateToStr(qryMinor['DiagnosisDiabetic']);
    end;

  objDiabetic := TDiabeticPatient.Create(frmPatientData.sFolder, sDiabeticDiagnosis, iDiastolic, iSystolic, rFasting, rOverNight, rPostprandial, rHeight, iHeartRate, iWeight, iWaist, bMicrovascular, bMacrovascular, sPills, sInsulin, rInsulinDosage);

  if cbxHbA1c.Checked = True then
    begin
      rHbA1c := StrToFloat(edtHbA1c.Text);
      objDiabetic.SetHbA1c(rHbA1c);
    end
  else
    begin
      rHbA1c := 0;
    end;

  with dmHospital do
    begin
      qryHospitalDB.SQL.Clear;
      qryHospitalDB.SQL.Add('SELECT Age FROM PatientInfo WHERE FolderNumber = "' + frmPatientData.sFolder + '"');
      qryHospitalDB.Open;
      qryHospitalDB.First;
      iAge := qryHospitalDB['Age'];
      objDiabetic.SetAge(iAge);

      qryMinor.SQL.Clear;
      qryMinor.SQL.Add('SELECT * FROM GeneralHealth WHERE ID = "' + frmPatientData.sID + '"');
      qryMinor.Open;
      qryMinor.First;
      bEpi := qryMinor['Epilepsy'];
      bAsm := qryMinor['Asthma'];
      bTB := qryMinor['TB'];
      bHypTns := qryMinor['HyperTension'];
      objDiabetic.SetDEATH(bEpi, bAsm, bTB, bHypTns);
    end;

  rBMI := objDiabetic.CalcBMI;
  sToStr := objDiabetic.ToStr;
  redCheck.Lines.Add(sToStr);
  redCheck.Lines.Add('');

  for I := 0 to (memNotes.Lines.Count - 1) do
    begin
      sStringNote := memNotes.Lines[I];
      redCheck.Lines.Add(sStringNote);
    end;
end;

procedure TfrmDiabetic.bmbDoneClick(Sender: TObject);
var
  iClass, P : integer;
begin
  sDate := IntToStr(YearOf(Today)) + '/' + IntToStr(MonthOf(Today)) + '/' + IntToStr(DayOf(Today));

  AssignFile(tMed, frmPatientData.sFolder + '.txt');
  Append(tMed);
  iClass := rgpClassification.ItemIndex;
  Writeln(tMed, IntToStr(iClass));
  Writeln(tMed, ':' + sDate);
  Writeln(tMed, '>' + sPills + ', ' + FloatToStrF(rInsulinDosage, ffFixed, 2, 1)+ ' units of ' + sInsulin);

  Writeln(tMed, '+' + memNotes.Lines[0]);
  for P := 1 to (memNotes.Lines.Count - 1) do
    begin
      redCheck.Lines.Add(memNotes.Lines[P]);
    end;

  Writeln(tMed, '-' + frmPathSelect.sFN + ' ' + frmPathSelect.sSN);
  Writeln(tMed, '*');
  CloseFile(tMed);

  sDate := IntToStr(YearOf(Today)) + '-' + IntToStr(MonthOf(Today)) + '-' + IntToStr(DayOf(Today));

  with dmHospital do
    begin
      qryHospitalDB.SQL.Clear;
      qryHospitalDB.SQL.Add('INSERT INTO DiabeticClinic');
      qryHospitalDB.SQL.Add('(FolderNumber, DiastolicBP, SystolicBP, FastingBloodSugar,');
      qryHospitalDB.SQL.Add('OvernightBloodSugar, PostPrandialBloodSugar, HeartRate,');
      qryHospitalDB.SQL.Add('Height, Weight, BMI, Date, WaistCircumference, Pills,');
      qryHospitalDB.SQL.Add('Insulin, InsulinDosage, HbA1c)');
      qryHospitalDB.SQL.Add('VALUES(:FolderNumber,:DiastolicBP,:SystolicBP,');
      qryHospitalDB.SQL.Add(':FastingBloodSugar,:OvernightBloodSugar,');
      qryHospitalDB.SQL.Add(':PostPrandialBloodSugar,:HeartRate,:Height,:Weight,');
      qryHospitalDB.SQL.Add(':BMI,:Date,:WaistCircumference,:Pills,:Insulin,');
      qryHospitalDB.SQL.Add(':InsulinDosage,:HbA1c)');

      qryHospitalDB.Parameters.ParamByName('FolderNumber').Value := frmPatientData.sFolder;
      qryHospitalDB.Parameters.ParamByName('DiastolicBP').Value := iDiastolic;
      qryHospitalDB.Parameters.ParamByName('SystolicBP').Value := iSystolic;
      qryHospitalDB.Parameters.ParamByName('FastingBloodSugar').Value := rFasting;
      qryHospitalDB.Parameters.ParamByName('OvernightBloodSugar').Value := rOverNight;
      qryHospitalDB.Parameters.ParamByName('PostPrandialBloodSugar').Value := rPostprandial;
      qryHospitalDB.Parameters.ParamByName('HeartRate').Value := iHeartRate;
      qryHospitalDB.Parameters.ParamByName('Height').Value := rHeight;
      qryHospitalDB.Parameters.ParamByName('Weight').Value := iWeight;
      qryHospitalDB.Parameters.ParamByName('BMI').Value := rBMI;
      qryHospitalDB.Parameters.ParamByName('Date').Value := sDate;
      qryHospitalDB.Parameters.ParamByName('WaistCircumference').Value := iWaist;
      qryHospitalDB.Parameters.ParamByName('Pills').Value := sPills;
      qryHospitalDB.Parameters.ParamByName('Insulin').Value := sInsulin;
      qryHospitalDB.Parameters.ParamByName('InsulinDosage').Value := rInsulinDosage;
      qryHospitalDB.Parameters.ParamByName('HbA1c').Value := rHbA1c;
      qryHospitalDB.ExecSQL;
    end;
end;

procedure TfrmDiabetic.memNotesClick(Sender: TObject);
begin
  memNotes.Lines.Clear;
  memNotes.SetFocus;
end;

end.
