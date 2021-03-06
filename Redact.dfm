object RedactForm: TRedactForm
  Left = 0
  Top = 0
  Caption = 'Redactare rapida'
  ClientHeight = 713
  ClientWidth = 1053
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    1053
    713)
  PixelsPerInch = 96
  TextHeight = 13
  object PnListSpecii: TPanel
    Left = 8
    Top = 72
    Width = 1037
    Height = 633
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'PnListSpecii'
    TabOrder = 0
    DesignSize = (
      1037
      633)
    object DBGLista: TDBGrid
      Left = 0
      Top = 119
      Width = 1037
      Height = 506
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = RedRapListGrup.DSRedRapListaSpec
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_L'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DENUMIREA'
          Width = 314
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MASA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'S'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'X'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'O'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'B'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'A'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'G'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'S_1'
          Width = 40
          Visible = True
        end>
    end
    object DBGGrupa: TDBGrid
      Left = 0
      Top = 16
      Width = 257
      Height = 97
      DataSource = RedRapListGrup.DSRedRapListGrup
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'SIFR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENUMIREA'
          Visible = True
        end>
    end
  end
  object BtRedactProbe: TButton
    Left = 72
    Top = 8
    Width = 313
    Height = 49
    Caption = 'Redactare probe'
    TabOrder = 1
    OnClick = BtRedactProbeClick
  end
  object BtListSpecii: TButton
    Left = 496
    Top = 8
    Width = 313
    Height = 49
    Caption = 'Lista specii'
    TabOrder = 2
    OnClick = BtListSpeciiClick
  end
  object PnRedactProbe: TPanel
    Left = 232
    Top = 88
    Width = 1037
    Height = 633
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'PnListSpecii'
    TabOrder = 3
    Visible = False
    DesignSize = (
      1037
      633)
    object DBGSpecii: TDBGrid
      Left = 0
      Top = 152
      Width = 1037
      Height = 450
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = RedRapListGrup.DSSpecii
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGSpeciiDblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_N'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENUMIREA'
          Width = 378
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEINSTETATE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD PROB N'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD PROB SECT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD SPECII N'
          Visible = True
        end>
    end
    object DBGObiectivAcvatic: TDBGrid
      Left = 0
      Top = 16
      Width = 300
      Height = 97
      DataSource = RedRapListGrup.DSObiectAcvatic
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENUMIREA'
          Title.Caption = 'Denumirea OA'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANUL CERCETARII'
          Title.Caption = 'Anul Cercetarii'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUPRAFATA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ADANCIUNEA'
          Visible = False
        end>
    end
    object DBNavigator2: TDBNavigator
      Left = 0
      Top = 601
      Width = 1040
      Height = 25
      DataSource = RedRapListGrup.DSSpecii
      Anchors = [akLeft, akRight, akBottom]
      TabOrder = 2
    end
    object DBGSectoare: TDBGrid
      Left = 344
      Top = 16
      Width = 230
      Height = 97
      DataSource = RedRapListGrup.DSSectoare
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODUL OA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DENUMIREA'
          Title.Caption = 'Denumirea Sectorului'
          Width = 160
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUPRAFATA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ADANCIUNEA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SECT1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SECT2'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SECT3'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'SECT4'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'INDPESECT'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NR STATII'
          Visible = False
        end>
    end
    object DBGProbe: TDBGrid
      Left = 608
      Top = 16
      Width = 230
      Height = 97
      DataSource = RedRapListGrup.DSProbe_H
      TabOrder = 4
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD SECTORUL'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD'
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'LOCUL SECT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'GRUPA ORGLR'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ADANCIMEA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'CARACTERULUI FACISULUI'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TEMPERATURA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TR APEI'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PH'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'N-NH4'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'N-NO2'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'N-NO3'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NMIN'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NORG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NT'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'P-PO3-4'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PORG'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PT'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DI'
          Visible = False
        end>
    end
    object Edit1: TEdit
      Left = 888
      Top = 16
      Width = 75
      Height = 21
      TabOrder = 5
      Visible = False
    end
    object Button1: TButton
      Left = 888
      Top = 56
      Width = 75
      Height = 25
      Caption = '<<'
      TabOrder = 6
      Visible = False
    end
    object DBNavigator3: TDBNavigator
      Left = 0
      Top = 112
      Width = 300
      Height = 25
      DataSource = RedRapListGrup.DSObiectAcvatic
      TabOrder = 7
    end
    object DBNavigator4: TDBNavigator
      Left = 344
      Top = 112
      Width = 230
      Height = 25
      DataSource = RedRapListGrup.DSSectoare
      TabOrder = 8
    end
    object DBNavigator5: TDBNavigator
      Left = 608
      Top = 112
      Width = 230
      Height = 25
      DataSource = RedRapListGrup.DSProbe_H
      TabOrder = 9
    end
  end
end
