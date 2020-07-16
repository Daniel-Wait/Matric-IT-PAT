object dmHospital: TdmHospital
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 199
  Width = 264
  object qryHospitalDB: TADOQuery
    Connection = conHospitalDB
    CursorType = ctStatic
    Parameters = <>
    Left = 112
    Top = 16
  end
  object conHospitalDB: TADOConnection
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Daniel\Doc' +
      'uments\4\HospitalDB.mdb;Mode=ReadWrite;Persist Security Info=Fal' +
      'se'
    LoginPrompt = False
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 24
    Top = 56
  end
  object dsrHospitalDB: TDataSource
    DataSet = qryHospitalDB
    Left = 184
    Top = 16
  end
  object qryMinor: TADOQuery
    Connection = conHospitalDB
    CursorType = ctStatic
    Parameters = <>
    Left = 112
    Top = 96
  end
  object dsrMinor: TDataSource
    DataSet = qryMinor
    Left = 184
    Top = 96
  end
end
