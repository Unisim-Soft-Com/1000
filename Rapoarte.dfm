object FormRapoarte: TFormRapoarte
  Left = 0
  Top = 0
  Caption = 'Rapoarte'
  ClientHeight = 623
  ClientWidth = 1009
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    1009
    623)
  PixelsPerInch = 96
  TextHeight = 13
  object BitBtn1: TBitBtn
    Left = 129
    Top = 16
    Width = 177
    Height = 25
    Caption = 'Total Recalcul'
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object BitBtn2: TBitBtn
    Left = 305
    Top = 16
    Width = 177
    Height = 25
    Caption = 'Raport Nsp+N/B'
    Enabled = False
    TabOrder = 1
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 481
    Top = 16
    Width = 177
    Height = 25
    Caption = 'Lista spec de alge'
    Enabled = False
    TabOrder = 2
    OnClick = BitBtn3Click
  end
  object BitBtn4: TBitBtn
    Left = 657
    Top = 16
    Width = 177
    Height = 25
    Caption = 'Indicele saprobic'
    Enabled = False
    TabOrder = 3
    OnClick = BitBtn4Click
  end
  object BtNext: TButton
    Left = 305
    Top = 47
    Width = 115
    Height = 25
    Caption = 'Next'
    TabOrder = 4
    OnClick = BtNextClick
  end
  object BtBack: TButton
    Left = 424
    Top = 47
    Width = 115
    Height = 25
    Caption = 'Back'
    TabOrder = 5
    OnClick = BtBackClick
  end
  object BtReset: TButton
    Left = 543
    Top = 47
    Width = 115
    Height = 25
    Caption = 'Reset'
    TabOrder = 6
    OnClick = BtResetClick
  end
  object Panel1: TPanel
    Left = -8
    Top = 65
    Width = 977
    Height = 531
    Anchors = [akLeft, akTop, akRight, akBottom]
    Enabled = False
    TabOrder = 7
    DesignSize = (
      977
      531)
    object Label1: TLabel
      Left = 40
      Top = 19
      Width = 27
      Height = 13
      Caption = 'De la '
    end
    object Edit1: TEdit
      Left = 82
      Top = 16
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object P1CalcN1: TButton
      Left = 224
      Top = 14
      Width = 179
      Height = 25
      Caption = 'Calcul Nr1 Dinamica Fito'
      TabOrder = 1
      OnClick = P1CalcN1Click
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 45
      Width = 945
      Height = 468
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Panel2: TPanel
    Left = 105
    Top = 102
    Width = 961
    Height = 505
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'Panel2'
    Enabled = False
    TabOrder = 8
    DesignSize = (
      961
      505)
    object DBGrid2: TDBGrid
      Left = 16
      Top = 67
      Width = 929
      Height = 422
      Anchors = [akLeft, akTop, akRight, akBottom]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object P2CalcN2: TButton
      Left = 122
      Top = 13
      Width = 225
      Height = 45
      Caption = 'Calcul Nr2 N fito pe grupi'
      TabOrder = 1
      OnClick = P2CalcN2Click
    end
    object P2CalcN3: TButton
      Left = 439
      Top = 13
      Width = 225
      Height = 45
      Caption = 'Calcul Nr3 N fito pe statii'
      TabOrder = 2
      OnClick = P2CalcN3Click
    end
  end
  object Panel3: TPanel
    Left = 169
    Top = 134
    Width = 977
    Height = 505
    Anchors = [akLeft, akTop, akRight, akBottom]
    Enabled = False
    TabOrder = 9
    object Label2: TLabel
      Left = 32
      Top = 24
      Width = 42
      Height = 13
      Caption = 'Perioada'
    end
    object Label3: TLabel
      Left = 32
      Top = 51
      Width = 15
      Height = 13
      Caption = 'OA'
    end
    object Label4: TLabel
      Left = 33
      Top = 79
      Width = 113
      Height = 13
      Caption = 'Perioada de comparatie'
    end
    object Edit2: TEdit
      Left = 80
      Top = 21
      Width = 369
      Height = 21
      TabOrder = 0
    end
    object Edit3: TEdit
      Left = 80
      Top = 48
      Width = 369
      Height = 21
      TabOrder = 1
    end
    object Edit4: TEdit
      Left = 160
      Top = 76
      Width = 290
      Height = 21
      TabOrder = 2
    end
    object P3Bt1: TButton
      Left = 375
      Top = 113
      Width = 75
      Height = 25
      Caption = 'Executa'
      TabOrder = 3
      OnClick = P3Bt1Click
    end
  end
  object Panel4: TPanel
    Left = 289
    Top = 289
    Width = 977
    Height = 505
    Anchors = [akLeft, akTop, akRight, akBottom]
    Enabled = False
    TabOrder = 10
    object P4DoIt: TButton
      Left = 136
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Do it'
      TabOrder = 0
      OnClick = P4DoItClick
    end
    object Button5: TButton
      Left = 281
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Do it Shanon'
      TabOrder = 1
      OnClick = Button5Click
    end
  end
end
