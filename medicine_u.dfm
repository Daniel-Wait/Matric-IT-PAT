object frmMedicine: TfrmMedicine
  Left = 682
  Top = 229
  Width = 426
  Height = 480
  Caption = 'Medicine'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnDiabetic: TButton
    Left = 144
    Top = 136
    Width = 113
    Height = 41
    Caption = 'Diabetic'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = btnDiabeticClick
  end
  object btnRenal: TButton
    Left = 144
    Top = 232
    Width = 113
    Height = 41
    Caption = 'Renal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object btnGeneral: TButton
    Left = 144
    Top = 40
    Width = 113
    Height = 41
    Caption = 'General'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object bmbBack: TBitBtn
    Left = 152
    Top = 336
    Width = 89
    Height = 41
    Caption = 'Back'
    TabOrder = 3
    OnClick = bmbBackClick
    Kind = bkAbort
  end
end
