unit dmHospitalDB_u;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TdmHospital = class(TDataModule)
    qryHospitalDB: TADOQuery;
    conHospitalDB: TADOConnection;
    dsrHospitalDB: TDataSource;
    qryMinor: TADOQuery;
    dsrMinor: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmHospital: TdmHospital;

implementation

{$R *.dfm}

end.
