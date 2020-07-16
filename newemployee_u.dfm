object frmNewEmployee: TfrmNewEmployee
  Left = 622
  Top = 209
  Width = 928
  Height = 480
  Caption = 'Add A New Employee'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblAge: TLabel
    Left = 616
    Top = 8
    Width = 19
    Height = 13
    Caption = 'Age'
  end
  object lblAccLvl: TLabel
    Left = 32
    Top = 104
    Width = 64
    Height = 13
    Caption = 'Access Level'
  end
  object btnEnter: TButton
    Left = 736
    Top = 296
    Width = 105
    Height = 33
    Caption = 'Enter'
    TabOrder = 0
  end
  object ledID: TLabeledEdit
    Left = 32
    Top = 24
    Width = 153
    Height = 21
    EditLabel.Width = 51
    EditLabel.Height = 13
    EditLabel.Caption = 'ID Number'
    TabOrder = 1
  end
  object LabeledEdit1: TLabeledEdit
    Left = 416
    Top = 72
    Width = 153
    Height = 21
    EditLabel.Width = 91
    EditLabel.Height = 13
    EditLabel.Caption = 'Telephone Number'
    TabOrder = 2
  end
  object ledCell: TLabeledEdit
    Left = 224
    Top = 72
    Width = 153
    Height = 21
    EditLabel.Width = 17
    EditLabel.Height = 13
    EditLabel.Caption = 'Cell'
    TabOrder = 3
  end
  object ledSurname: TLabeledEdit
    Left = 416
    Top = 24
    Width = 153
    Height = 21
    EditLabel.Width = 42
    EditLabel.Height = 13
    EditLabel.Caption = 'Surname'
    TabOrder = 4
  end
  object ledName: TLabeledEdit
    Left = 224
    Top = 24
    Width = 153
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Name'
    TabOrder = 5
  end
  object ledSalary: TLabeledEdit
    Left = 224
    Top = 120
    Width = 153
    Height = 21
    EditLabel.Width = 29
    EditLabel.Height = 13
    EditLabel.Caption = 'Salary'
    TabOrder = 6
  end
  object LabeledEdit7: TLabeledEdit
    Left = 32
    Top = 72
    Width = 153
    Height = 21
    EditLabel.Width = 66
    EditLabel.Height = 13
    EditLabel.Caption = 'Email Address'
    TabOrder = 7
  end
  object ledProfession: TLabeledEdit
    Left = 608
    Top = 72
    Width = 153
    Height = 21
    EditLabel.Width = 49
    EditLabel.Height = 13
    EditLabel.Caption = 'Profession'
    TabOrder = 8
  end
  object rgpDept2: TRadioGroup
    Left = 344
    Top = 160
    Width = 305
    Height = 273
    Caption = 'Department 2'
    Items.Strings = (
      'Anaesthetics'
      'ENT'
      'Haemotology'
      'Medicine'
      'Neurology'
      'Obstetrics and Gynaecology'
      'Oncology'
      'Orthopedics'
      'Pediatics'
      'Pharmacy'
      'Physiotherapy'
      'Radiography'
      'Surgery'
      'Urology')
    TabOrder = 9
  end
  object sedAge: TSpinEdit
    Left = 608
    Top = 24
    Width = 153
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 10
    Value = 0
  end
  object bmbCancel: TBitBtn
    Left = 736
    Top = 168
    Width = 105
    Height = 33
    TabOrder = 11
    Kind = bkCancel
  end
  object rgpDept1: TRadioGroup
    Left = 32
    Top = 160
    Width = 305
    Height = 273
    Caption = 'Department 1'
    Items.Strings = (
      'Anaesthetics'
      'ENT'
      'Haemotology'
      'Medicine'
      'Neurology'
      'Obstetrics and Gynaecology'
      'Oncology'
      'Orthopedics'
      'Pediatics'
      'Pharmacy'
      'Physiotherapy'
      'Radiography'
      'Surgery'
      'Urology')
    TabOrder = 12
  end
  object sedAccLvl: TSpinEdit
    Left = 32
    Top = 120
    Width = 153
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 13
    Value = 0
  end
end
