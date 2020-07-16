object frmDiabetic: TfrmDiabetic
  Left = 288
  Top = 193
  Width = 934
  Height = 529
  VertScrollBar.Position = 861
  Caption = 'Diabetic Clinic'
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lblPM: TLabel
    Left = 376
    Top = 247
    Width = 163
    Height = 16
    Caption = 'PRESCRIBE MEDICATION'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblNotes: TLabel
    Left = 392
    Top = 559
    Width = 120
    Height = 16
    Caption = 'DOCTOR'#39'S NOTES'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object lblDiabeticRecords: TLabel
    Left = 344
    Top = -821
    Width = 204
    Height = 16
    Caption = 'PATIENT'#39'S DIABETIC RECORDS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object pnlMeasure: TPanel
    Left = 16
    Top = -441
    Width = 865
    Height = 129
    BorderStyle = bsSingle
    TabOrder = 0
    object lblHeight: TLabel
      Left = 112
      Top = 24
      Width = 61
      Height = 16
      Caption = 'Height (m)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblWeight: TLabel
      Left = 536
      Top = 24
      Width = 68
      Height = 16
      Caption = 'Weight (kg)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblWaist: TLabel
      Left = 24
      Top = 72
      Width = 152
      Height = 16
      Caption = 'Waist Circumference (cm)'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblHR: TLabel
      Left = 544
      Top = 72
      Width = 65
      Height = 16
      Caption = 'Heart Rate'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblMeasurements: TLabel
      Left = 384
      Top = 8
      Width = 115
      Height = 16
      Caption = 'MEASUREMENTS'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sedHR: TSpinEdit
      Left = 624
      Top = 72
      Width = 89
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 0
      Value = 80
    end
    object sedWaist: TSpinEdit
      Left = 192
      Top = 72
      Width = 89
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 50
    end
    object sedWeight: TSpinEdit
      Left = 624
      Top = 24
      Width = 89
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 2
      Value = 60
    end
    object sedHeight: TSpinEdit
      Left = 192
      Top = 24
      Width = 89
      Height = 22
      MaxValue = 0
      MinValue = 0
      TabOrder = 3
      Value = 170
    end
  end
  object pnlBP: TPanel
    Left = 16
    Top = -1
    Width = 865
    Height = 89
    BorderStyle = bsSingle
    TabOrder = 1
    object lblSystolic: TLabel
      Left = 128
      Top = 32
      Width = 47
      Height = 16
      Caption = 'Systolic'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblDiastolic: TLabel
      Left = 560
      Top = 32
      Width = 52
      Height = 16
      Caption = 'Diastolic'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblBP: TLabel
      Left = 376
      Top = 8
      Width = 124
      Height = 16
      Caption = 'BLOOD PRESSURE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object sedSystolic: TSpinEdit
      Left = 192
      Top = 32
      Width = 89
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 0
      Value = 130
    end
    object sedDiastolic: TSpinEdit
      Left = 624
      Top = 80
      Width = 89
      Height = 22
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      MaxValue = 0
      MinValue = 0
      ParentFont = False
      TabOrder = 1
      Value = 0
    end
  end
  object pnlGlucose: TPanel
    Left = 16
    Top = -165
    Width = 865
    Height = 129
    BorderStyle = bsSingle
    TabOrder = 2
    object lblBG: TLabel
      Left = 384
      Top = 8
      Width = 113
      Height = 16
      Caption = 'BLOOD GLUCOSE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblFasting: TLabel
      Left = 560
      Top = 32
      Width = 44
      Height = 16
      Caption = 'Fasting'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblPP: TLabel
      Left = 104
      Top = 72
      Width = 76
      Height = 16
      Caption = 'Postprendial'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblOvernight: TLabel
      Left = 112
      Top = 32
      Width = 57
      Height = 16
      Caption = 'Overnight'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edtOvernight: TEdit
      Left = 192
      Top = 32
      Width = 137
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object edtFasting: TEdit
      Left = 624
      Top = 32
      Width = 137
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object edtPP: TEdit
      Left = 192
      Top = 72
      Width = 137
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
  object pnlVascular: TPanel
    Left = 16
    Top = -282
    Width = 865
    Height = 86
    BorderStyle = bsSingle
    TabOrder = 3
    object lblVascular: TLabel
      Left = 376
      Top = 8
      Width = 133
      Height = 16
      Caption = 'VASCULAR DAMAGE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbxMicro: TCheckBox
      Left = 192
      Top = 32
      Width = 161
      Height = 17
      Caption = 'Microvasular Damage'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cbxMacro: TCheckBox
      Left = 560
      Top = 32
      Width = 169
      Height = 17
      Caption = 'Macrovascular Damage'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
  end
  object rgpPills: TRadioGroup
    Left = 24
    Top = 276
    Width = 400
    Height = 200
    Caption = 'Pills'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'Netforeman'
      'Glimepramide'
      'Glyclozide'
      'Glibenclamide'
      'No Pills')
    ParentFont = False
    TabOrder = 4
  end
  object rgpInsulin: TRadioGroup
    Left = 488
    Top = 276
    Width = 400
    Height = 199
    Caption = 'Insulin'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'Rapid Acting Insulin'
      'Short Acting Insulin'
      'Long Acting Insulin'
      'Ultra-Long Acting Insulin'
      'Actrofane'
      'Humolog'
      'Insuman'
      'No Insulin')
    ParentFont = False
    TabOrder = 5
  end
  object ledInsDos: TLabeledEdit
    Left = 704
    Top = 503
    Width = 185
    Height = 24
    EditLabel.Width = 146
    EditLabel.Height = 16
    EditLabel.Caption = 'Insulin Dosage (units/kg)'
    EditLabel.Font.Charset = DEFAULT_CHARSET
    EditLabel.Font.Color = clBlue
    EditLabel.Font.Height = -13
    EditLabel.Font.Name = 'MS Sans Serif'
    EditLabel.Font.Style = []
    EditLabel.ParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
  end
  object btnCheck: TButton
    Left = 376
    Top = 923
    Width = 137
    Height = 33
    Caption = 'Check Patient Info'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    OnClick = btnCheckClick
  end
  object redCheck: TRichEdit
    Left = 72
    Top = 989
    Width = 769
    Height = 217
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object pnlFinal: TPanel
    Left = 0
    Top = 1238
    Width = 897
    Height = 94
    TabOrder = 9
    object bmbDone: TBitBtn
      Left = 520
      Top = 24
      Width = 89
      Height = 41
      Caption = 'Done'
      TabOrder = 0
      OnClick = bmbDoneClick
      Kind = bkOK
    end
    object bmbRetry: TBitBtn
      Left = 288
      Top = 24
      Width = 89
      Height = 41
      Caption = '&Reset'
      TabOrder = 1
      Kind = bkRetry
    end
  end
  object dbgDiabetc: TDBGrid
    Left = 16
    Top = -789
    Width = 865
    Height = 305
    ReadOnly = True
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object rgpClassification: TRadioGroup
    Left = 64
    Top = 595
    Width = 769
    Height = 134
    Caption = 'General Notes OR System Specific '
    Columns = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Items.Strings = (
      'General'
      'CardioCirculatory'
      'Endocrine'
      'ENT'
      'GastroIntestinal'
      'GenitoUrinary'
      'Macrovascular'
      'Microvascular'
      'MuscularSkeletal'
      'Neurological'
      'Opthalmology'
      'Respiratory'
      'Rheumotology'
      'Unidentitified Issue')
    ParentFont = False
    TabOrder = 11
  end
  object pnlHbA1c: TPanel
    Left = 16
    Top = 119
    Width = 865
    Height = 89
    BorderStyle = bsSingle
    TabOrder = 12
    object lblA1cLevel: TLabel
      Left = 528
      Top = 32
      Width = 77
      Height = 16
      Caption = 'HbA1c Level'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lblHbA1c: TLabel
      Left = 416
      Top = 8
      Width = 43
      Height = 16
      Caption = 'HbA1C'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object cbxHbA1c: TCheckBox
      Left = 168
      Top = 32
      Width = 113
      Height = 25
      Caption = 'Check HbA1c?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
  object edtHbA1c: TEdit
    Left = 640
    Top = 149
    Width = 137
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 13
  end
  object bmbBack: TBitBtn
    Left = 16
    Top = -853
    Width = 73
    Height = 41
    Caption = 'Back'
    TabOrder = 14
    Kind = bkCancel
  end
  object memNotes: TMemo
    Left = 144
    Top = 753
    Width = 609
    Height = 129
    Lines.Strings = (
      'memNotes')
    TabOrder = 15
    OnClick = memNotesClick
  end
end
