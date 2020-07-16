object frmDepts: TfrmDepts
  Left = 618
  Top = 213
  Width = 490
  Height = 531
  Caption = 'Departments'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblUser: TLabel
    Left = 16
    Top = 8
    Width = 122
    Height = 13
    Caption = 'USER: Marlene KURTEN'
  end
  object lblJob: TLabel
    Left = 16
    Top = 24
    Width = 81
    Height = 13
    Caption = 'ACCESS LEVEL:'
  end
  object btnAnst: TButton
    Left = 16
    Top = 64
    Width = 150
    Height = 30
    Caption = 'Anaesthetics'
    TabOrder = 0
  end
  object btnPhys: TButton
    Left = 312
    Top = 232
    Width = 150
    Height = 30
    Caption = 'Physiotherapy'
    TabOrder = 1
  end
  object btnUro: TButton
    Left = 312
    Top = 400
    Width = 150
    Height = 30
    Caption = 'Urology'
    TabOrder = 2
  end
  object btnNeuro: TButton
    Left = 16
    Top = 288
    Width = 150
    Height = 30
    Caption = 'Neurology'
    TabOrder = 3
  end
  object btnOnG: TButton
    Left = 16
    Top = 344
    Width = 150
    Height = 30
    Caption = 'Obstetrics and Gynaecology'
    TabOrder = 4
  end
  object btnHaem: TButton
    Left = 16
    Top = 176
    Width = 150
    Height = 30
    Caption = 'Haemotology'
    TabOrder = 5
  end
  object btnPhrm: TButton
    Left = 312
    Top = 176
    Width = 150
    Height = 30
    Caption = 'Pharmacy'
    TabOrder = 6
  end
  object btnOnc: TButton
    Left = 16
    Top = 400
    Width = 150
    Height = 30
    Caption = 'Oncology'
    TabOrder = 7
  end
  object btnPed: TButton
    Left = 312
    Top = 120
    Width = 150
    Height = 30
    Caption = 'Pediatrics'
    TabOrder = 8
  end
  object btnOrth: TButton
    Left = 312
    Top = 64
    Width = 150
    Height = 30
    Caption = 'Orthopedics'
    TabOrder = 9
  end
  object btnMed: TButton
    Left = 16
    Top = 232
    Width = 150
    Height = 30
    Caption = 'Medicine'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = btnMedClick
  end
  object btnSurg: TButton
    Left = 312
    Top = 344
    Width = 150
    Height = 30
    Caption = 'Surgery'
    TabOrder = 11
  end
  object btnRad: TButton
    Left = 312
    Top = 288
    Width = 150
    Height = 30
    Caption = 'Radiograhy'
    TabOrder = 12
  end
  object btnENT: TButton
    Left = 16
    Top = 120
    Width = 150
    Height = 30
    Caption = 'ENT'
    TabOrder = 13
  end
  object bmbBack: TBitBtn
    Left = 392
    Top = 8
    Width = 73
    Height = 33
    Caption = 'Back'
    TabOrder = 14
    OnClick = bmbBackClick
    Kind = bkCancel
  end
end
