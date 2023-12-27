object Form2: TForm2
  Left = 0
  Top = 0
  Cursor = crHandPoint
  BorderStyle = bsDialog
  Caption = 'Form2'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -24
  Font.Name = 'Sitka Banner'
  Font.Style = []
  TextHeight = 35
  object xPower2: TLabel
    Left = 238
    Top = 80
    Width = 33
    Height = 35
    Caption = 'x'#178'+'
  end
  object eqLabel: TLabel
    Left = 48
    Top = 80
    Width = 73
    Height = 35
    Caption = 'Ecuatia:'
  end
  object x: TLabel
    Left = 384
    Top = 80
    Width = 25
    Height = 35
    Caption = 'x+'
  end
  object eq0: TLabel
    Left = 512
    Top = 80
    Width = 26
    Height = 35
    Caption = '=0'
  end
  object meResult: TMemo
    Left = 24
    Top = 205
    Width = 577
    Height = 201
    ReadOnly = True
    TabOrder = 0
  end
  object edCoef1: TEdit
    Left = 151
    Top = 77
    Width = 81
    Height = 43
    Cursor = crIBeam
    TabOrder = 1
  end
  object edCoef2: TEdit
    Left = 297
    Top = 77
    Width = 81
    Height = 43
    Cursor = crIBeam
    TabOrder = 2
  end
  object edCoef3: TEdit
    Left = 425
    Top = 77
    Width = 81
    Height = 43
    Cursor = crIBeam
    TabOrder = 3
  end
  object btnReinit: TButton
    Left = 72
    Top = 152
    Width = 113
    Height = 41
    Cursor = crHandPoint
    Caption = 'Reini'#539'ializeaz'#259
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btnReinitClick
  end
  object btnReset: TButton
    Left = 232
    Top = 152
    Width = 107
    Height = 41
    Cursor = crHandPoint
    Caption = 'Rezolv'#259
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = btnResetClick
  end
  object btnClose: TButton
    Left = 392
    Top = 152
    Width = 108
    Height = 41
    Cursor = crHandPoint
    Caption = #206'nchide'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btnCloseClick
  end
  object Panel1: TPanel
    Left = 64
    Top = 24
    Width = 497
    Height = 41
    Caption = 'Introduce'#539'i parametrii ecua'#539'iei de gradul 2'
    TabOrder = 7
  end
end
