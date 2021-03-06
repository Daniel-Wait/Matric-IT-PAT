object frmPatientDB: TfrmPatientDB
  Left = 301
  Top = 216
  Width = 928
  Height = 480
  Caption = 'Patient Database'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ledFilterValue: TLabeledEdit
    Left = 224
    Top = 280
    Width = 145
    Height = 21
    EditLabel.Width = 27
    EditLabel.Height = 13
    EditLabel.Caption = 'Value'
    TabOrder = 0
  end
  object btnFilter: TButton
    Left = 152
    Top = 328
    Width = 105
    Height = 33
    Caption = 'Filter'
    TabOrder = 1
  end
  object bmBack: TBitBtn
    Left = 776
    Top = 384
    Width = 105
    Height = 33
    Caption = 'Back'
    TabOrder = 2
    Kind = bkAbort
  end
  object btnNewPatient: TButton
    Left = 624
    Top = 384
    Width = 105
    Height = 33
    Caption = 'New Patient'
    TabOrder = 3
    OnClick = btnNewPatientClick
  end
  object Button1: TButton
    Left = 392
    Top = 280
    Width = 89
    Height = 25
    Caption = 'Add Requirement'
    TabOrder = 4
  end
  object ComboBox1: TComboBox
    Left = 48
    Top = 280
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 5
  end
  object dbgPatientDB: TDBGrid
    Left = 32
    Top = 24
    Width = 817
    Height = 217
    DataSource = dmHospital.dsrHospitalDB
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
end
