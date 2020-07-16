program login_p;

uses
  Forms,
  login_u in 'login_u.pas' {frmLogIn},
  pathselect_u in 'pathselect_u.pas' {frmPathSelect},
  depts_u in 'depts_u.pas' {frmDepts},
  patient_u in 'patient_u.pas' {frmPatientData},
  diabetic_u in 'diabetic_u.pas' {frmDiabetic},
  newpatient_u in 'newpatient_u.pas' {frmNewPatient},
  newemployee_u in 'newemployee_u.pas' {frmNewEmployee},
  dbpatient_u in 'dbpatient_u.pas' {frmPatientDB},
  dbstaff_u in 'dbstaff_u.pas' {frmStaffDB},
  medicine_u in 'medicine_u.pas' {frmMedicine},
  dmHospitalDB_u in 'dmHospitalDB_u.pas' {dmHospital: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmLogIn, frmLogIn);
  Application.CreateForm(TfrmPathSelect, frmPathSelect);
  Application.CreateForm(TfrmDepts, frmDepts);
  Application.CreateForm(TfrmPatientData, frmPatientData);
  Application.CreateForm(TfrmDiabetic, frmDiabetic);
  Application.CreateForm(TfrmNewPatient, frmNewPatient);
  Application.CreateForm(TfrmNewEmployee, frmNewEmployee);
  Application.CreateForm(TfrmPatientDB, frmPatientDB);
  Application.CreateForm(TfrmStaffDB, frmStaffDB);
  Application.CreateForm(TfrmMedicine, frmMedicine);
  Application.CreateForm(TdmHospital, dmHospital);
  Application.Run;
end.
