object frmNewPatient: TfrmNewPatient
  Left = 294
  Top = 406
  Width = 928
  Height = 860
  Caption = 'Add A New Patient'
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
    Left = 608
    Top = 56
    Width = 19
    Height = 13
    Caption = 'Age'
  end
  object lblNoK: TLabel
    Left = 32
    Top = 488
    Width = 52
    Height = 13
    Caption = 'Next of Kin'
  end
  object btnEnter: TButton
    Left = 32
    Top = 688
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
    Left = 32
    Top = 72
    Width = 153
    Height = 21
    EditLabel.Width = 91
    EditLabel.Height = 13
    EditLabel.Caption = 'Telephone Number'
    TabOrder = 2
  end
  object ledCell: TLabeledEdit
    Left = 608
    Top = 24
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
  object ledNoKContact: TLabeledEdit
    Left = 32
    Top = 584
    Width = 153
    Height = 21
    EditLabel.Width = 77
    EditLabel.Height = 13
    EditLabel.Caption = 'Contact Number'
    TabOrder = 6
  end
  object ledNoKName: TLabeledEdit
    Left = 224
    Top = 536
    Width = 153
    Height = 21
    EditLabel.Width = 28
    EditLabel.Height = 13
    EditLabel.Caption = 'Name'
    TabOrder = 7
  end
  object LabeledEdit7: TLabeledEdit
    Left = 224
    Top = 72
    Width = 153
    Height = 21
    EditLabel.Width = 66
    EditLabel.Height = 13
    EditLabel.Caption = 'Email Address'
    TabOrder = 8
  end
  object ledNoKRelationship: TLabeledEdit
    Left = 616
    Top = 536
    Width = 153
    Height = 21
    EditLabel.Width = 58
    EditLabel.Height = 13
    EditLabel.Caption = 'Relationship'
    TabOrder = 9
  end
  object ledNoKSurname: TLabeledEdit
    Left = 416
    Top = 536
    Width = 153
    Height = 21
    EditLabel.Width = 42
    EditLabel.Height = 13
    EditLabel.Caption = 'Surname'
    TabOrder = 10
  end
  object ledNoKID: TLabeledEdit
    Left = 32
    Top = 536
    Width = 153
    Height = 21
    EditLabel.Width = 51
    EditLabel.Height = 13
    EditLabel.Caption = 'ID Number'
    TabOrder = 11
  end
  object rgpGender: TRadioGroup
    Left = 416
    Top = 64
    Width = 153
    Height = 57
    Caption = 'Gender'
    Items.Strings = (
      'Male'
      'Female')
    TabOrder = 12
  end
  object sedAge: TSpinEdit
    Left = 608
    Top = 72
    Width = 153
    Height = 22
    MaxValue = 0
    MinValue = 0
    TabOrder = 13
    Value = 0
  end
  object bmbCancel: TBitBtn
    Left = 296
    Top = 688
    Width = 105
    Height = 33
    TabOrder = 14
    OnClick = bmbCancelClick
    Kind = bkCancel
  end
  object clxGeneralHealth: TCheckListBox
    Left = 32
    Top = 160
    Width = 385
    Height = 169
    Columns = 2
    ItemHeight = 13
    Items.Strings = (
      'CardioCirculatory Problems'
      'Endocrine Problems'
      'ENT Problems'
      'GastroIntestina Problemsl'
      'GenitoUrinary Problems'
      'Macrovascular Problems'
      'Microvascular Problems'
      'MuscularSkeletal Problems'
      'Neurological Problems'
      'Opthalmology Problems'
      'Respiratory Problems'
      'Rheumotology Problems')
    TabOrder = 15
  end
  object CheckListBox1: TCheckListBox
    Left = 432
    Top = 176
    Width = 177
    Height = 73
    Columns = 2
    ItemHeight = 13
    Items.Strings = (
      'Diabetese'
      'Epilepsy'
      'Asthma'
      'TB'
      'HyperTension')
    TabOrder = 16
  end
end
