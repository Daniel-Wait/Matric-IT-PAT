object frmPatientData: TfrmPatientData
  Left = 255
  Top = 365
  Width = 914
  Height = 480
  VertScrollBar.Position = 832
  Caption = 'Patient Data'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlPatient: TPanel
    Left = 16
    Top = -809
    Width = 849
    Height = 109
    BorderStyle = bsSingle
    TabOrder = 0
    object lblPatientInfo: TLabel
      Left = 360
      Top = 8
      Width = 124
      Height = 13
      Caption = 'PATIENT INFORMATION'
    end
    object lblD: TLabel
      Left = 544
      Top = 32
      Width = 51
      Height = 13
      Caption = 'ID Number'
    end
    object lblFolder: TLabel
      Left = 96
      Top = 32
      Width = 69
      Height = 13
      Caption = 'Folder Number'
    end
    object edtFolder: TEdit
      Left = 192
      Top = 32
      Width = 137
      Height = 21
      TabOrder = 0
    end
    object edtID: TEdit
      Left = 624
      Top = 32
      Width = 137
      Height = 21
      TabOrder = 1
    end
    object BitBtn1: TBitBtn
      Left = 384
      Top = 64
      Width = 89
      Height = 33
      TabOrder = 2
      OnClick = BitBtn1Click
      Kind = bkOK
    end
  end
  object redMedicalHistory: TRichEdit
    Left = 16
    Top = -282
    Width = 849
    Height = 251
    Lines.Strings = (
      'redMedicalHistory')
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 1
  end
  object dbgPatientInfo: TDBGrid
    Left = 16
    Top = -656
    Width = 849
    Height = 329
    DataSource = dmHospital.dsrHospitalDB
    ReadOnly = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object dbgBloodResults: TDBGrid
    Left = 16
    Top = 11
    Width = 849
    Height = 281
    DataSource = dmHospital.dsrMinor
    ReadOnly = True
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object pnlPFinal: TPanel
    Left = 16
    Top = 336
    Width = 849
    Height = 105
    TabOrder = 4
    object btnNext: TBitBtn
      Left = 552
      Top = 32
      Width = 97
      Height = 41
      Caption = 'Next'
      TabOrder = 0
      Visible = False
      OnClick = btnNextClick
      Kind = bkOK
    end
  end
  object btnClose: TBitBtn
    Left = 208
    Top = 368
    Width = 97
    Height = 41
    TabOrder = 5
    Kind = bkClose
  end
end
