object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = '1000'
  ClientHeight = 796
  ClientWidth = 1442
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  DesignSize = (
    1442
    796)
  PixelsPerInch = 96
  TextHeight = 13
  object PnRedactProbe: TPanel
    Left = 36
    Top = -12
    Width = 1037
    Height = 653
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'PnListSpecii'
    TabOrder = 1
    DesignSize = (
      1037
      653)
    object Label2: TLabel
      Left = 55
      Top = 2
      Width = 81
      Height = 13
      Caption = 'Redactare Probe'
      Visible = False
    end
    object Label3: TLabel
      Left = 14
      Top = 10
      Width = 19
      Height = 13
      Caption = 'Cod'
    end
    object Label4: TLabel
      Left = 51
      Top = 10
      Width = 45
      Height = 13
      Caption = 'Denumire'
    end
    object Label5: TLabel
      Left = 351
      Top = 10
      Width = 19
      Height = 13
      Caption = 'Cod'
    end
    object Label6: TLabel
      Left = 387
      Top = 10
      Width = 45
      Height = 13
      Caption = 'Denumire'
    end
    object Label7: TLabel
      Left = 625
      Top = 10
      Width = 19
      Height = 13
      Caption = 'Cod'
    end
    object Label8: TLabel
      Left = 676
      Top = 10
      Width = 23
      Height = 13
      Caption = 'Data'
      Visible = False
    end
    object DBGObiectivAcvatic: TDBGrid
      Left = 0
      Top = 50
      Width = 321
      Height = 97
      DataSource = RedRapListGrup.DSObiectAcvatic
      ReadOnly = True
      TabOrder = 9
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
    object DBGSectoare: TDBGrid
      Left = 344
      Top = 52
      Width = 230
      Height = 95
      DataSource = RedRapListGrup.DSSectoare
      ReadOnly = True
      TabOrder = 10
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
      Left = 610
      Top = 50
      Width = 230
      Height = 97
      DataSource = RedRapListGrup.DSProbe_H
      ReadOnly = True
      TabOrder = 11
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
    object PnRedactProbX: TButton
      Left = 996
      Top = 14
      Width = 32
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
      OnClick = PnRedactProbXClick
    end
    object Edit1: TEdit
      Left = 11
      Top = 23
      Width = 30
      Height = 21
      TabOrder = 0
      OnChange = Button1Click
    end
    object Button1: TButton
      Left = 261
      Top = 21
      Width = 60
      Height = 25
      Caption = 'Cauta'
      TabOrder = 2
      OnClick = Button1Click
    end
    object Edit4: TEdit
      Left = 48
      Top = 23
      Width = 183
      Height = 21
      TabOrder = 1
      OnChange = Button1Click
    end
    object Edit5: TEdit
      Left = 347
      Top = 23
      Width = 30
      Height = 21
      TabOrder = 3
      OnChange = Button3Click
    end
    object Edit6: TEdit
      Left = 384
      Top = 23
      Width = 124
      Height = 21
      TabOrder = 4
      OnChange = Button3Click
    end
    object Button3: TButton
      Left = 514
      Top = 21
      Width = 60
      Height = 25
      Caption = 'Cauta'
      TabOrder = 5
      OnClick = Button3Click
    end
    object Edit7: TEdit
      Left = 622
      Top = 23
      Width = 40
      Height = 21
      TabOrder = 6
      OnChange = Button4Click
    end
    object Edit8: TEdit
      Left = 672
      Top = 23
      Width = 100
      Height = 21
      TabOrder = 7
      Visible = False
    end
    object Button4: TButton
      Left = 780
      Top = 21
      Width = 60
      Height = 25
      Caption = 'Cauta'
      TabOrder = 8
      OnClick = Button4Click
    end
    object Button5: TButton
      Left = 13
      Top = 148
      Width = 85
      Height = 25
      Caption = 'Adauga'
      TabOrder = 14
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 121
      Top = 148
      Width = 85
      Height = 25
      Caption = 'Editeaza'
      TabOrder = 15
      OnClick = Button6Click
    end
    object Button7: TButton
      Left = 228
      Top = 148
      Width = 85
      Height = 25
      Caption = 'Sterge'
      TabOrder = 16
      OnClick = Button7Click
    end
    object Button10: TButton
      Left = 504
      Top = 148
      Width = 70
      Height = 25
      Caption = 'Sterge'
      TabOrder = 17
      OnClick = Button10Click
    end
    object Button8: TButton
      Left = 344
      Top = 148
      Width = 70
      Height = 25
      Caption = 'Adauga'
      TabOrder = 18
      OnClick = Button8Click
    end
    object Button9: TButton
      Left = 424
      Top = 148
      Width = 70
      Height = 25
      Caption = 'Editeaza'
      TabOrder = 19
      OnClick = Button9Click
    end
    object DBGSpecii: TDBGrid
      Left = 1
      Top = 180
      Width = 1037
      Height = 437
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = RedRapListGrup.DSSpecii
      TabOrder = 12
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGSpeciiDblClick
      OnKeyDown = DBGSpeciiKeyDown
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_SPECII_N'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENUMIRE'
          Width = 450
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DEINSTETATE'
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_SPECII_TIP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PROB_N'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD_PROB_SECT'
          Visible = True
        end>
    end
    object Button12: TButton
      Left = 690
      Top = 148
      Width = 70
      Height = 25
      Caption = 'Editeaza'
      TabOrder = 20
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 770
      Top = 148
      Width = 70
      Height = 25
      Caption = 'Sterge'
      TabOrder = 21
      OnClick = Button13Click
    end
    object Button11: TButton
      Left = 610
      Top = 148
      Width = 70
      Height = 25
      Caption = 'Adauga'
      TabOrder = 22
      OnClick = Button11Click
    end
    object Button20: TButton
      Left = 161
      Top = 620
      Width = 70
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Editeaza'
      TabOrder = 23
      OnClick = Button20Click
    end
    object Button21: TButton
      Left = 261
      Top = 620
      Width = 70
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Sterge'
      TabOrder = 24
      OnClick = Button21Click
    end
    object Button22: TButton
      Left = 66
      Top = 620
      Width = 70
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'Adauga'
      TabOrder = 25
      OnClick = Button22Click
    end
  end
  object PnListSpecii: TPanel
    Left = 656
    Top = 73
    Width = 1037
    Height = 633
    Anchors = [akLeft, akTop, akRight, akBottom]
    Caption = 'PnListSpecii'
    TabOrder = 0
    Visible = False
    DesignSize = (
      1037
      633)
    object Label1: TLabel
      Left = 48
      Top = 0
      Width = 52
      Height = 13
      Caption = 'Lista Specii'
      Visible = False
    end
    object DBGLista: TDBGrid
      Left = -3
      Top = 119
      Width = 1037
      Height = 506
      Anchors = [akLeft, akTop, akRight, akBottom]
      DataSource = RedRapListGrup.DSRedRapListaSpec
      ReadOnly = True
      TabOrder = 2
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
      Left = -3
      Top = 16
      Width = 257
      Height = 97
      DataSource = RedRapListGrup.DSRedRapListGrup
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
          FieldName = 'SIFR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENUMIREA'
          Visible = True
        end>
    end
    object PnListSpeciiX: TButton
      Left = 994
      Top = 16
      Width = 32
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'X'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = PnListSpeciiXClick
    end
  end
  object PnAddSpecie: TPanel
    Left = 344
    Top = 167
    Width = 650
    Height = 314
    TabOrder = 2
    Visible = False
    object Label9: TLabel
      Left = 49
      Top = 14
      Width = 19
      Height = 13
      Caption = 'Cod'
      Visible = False
    end
    object Label10: TLabel
      Left = 112
      Top = 14
      Width = 45
      Height = 13
      Caption = 'Denumire'
      Visible = False
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 56
      Width = 609
      Height = 209
      DataSource = RedRapListGrup.DSAddSpecie
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'COD_L'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'COD_N'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENUMIREA'
          Width = 430
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MASA'
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 44
      Top = 29
      Width = 49
      Height = 21
      NumbersOnly = True
      TabOrder = 1
      OnChange = Button2Click
    end
    object Edit3: TEdit
      Left = 104
      Top = 29
      Width = 297
      Height = 21
      TabOrder = 2
      OnChange = Button2Click
    end
    object Button2: TButton
      Left = 407
      Top = 27
      Width = 75
      Height = 25
      Caption = 'Cauta'
      TabOrder = 3
      OnClick = Button2Click
    end
    object PnAddSpOk: TButton
      Left = 64
      Top = 271
      Width = 153
      Height = 25
      Caption = 'Ok'
      TabOrder = 4
      OnClick = PnAddSpOkClick
    end
    object PnAddSpCancel: TButton
      Left = 440
      Top = 271
      Width = 153
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 5
      OnClick = PnAddSpCancelClick
    end
  end
  object PnAddOA: TPanel
    Left = 21
    Top = 522
    Width = 549
    Height = 266
    Caption = 'PnAddOA'
    TabOrder = 3
    Visible = False
    object Label13: TLabel
      Left = 154
      Top = 14
      Width = 180
      Height = 13
      Caption = 'Adaugare/Editare  Obiective Acvatice'
    end
    object DBGrid2: TDBGrid
      Left = 15
      Top = 33
      Width = 514
      Height = 183
      DataSource = RedRapListGrup.DSObiectAcvatic
      TabOrder = 0
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ANUL CERCETARII'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUPRAFATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADANCIUNEA'
          Visible = True
        end>
    end
    object Button14: TButton
      Left = 34
      Top = 222
      Width = 153
      Height = 25
      Caption = 'Ok'
      TabOrder = 1
      OnClick = Button14Click
    end
    object Button15: TButton
      Left = 354
      Top = 222
      Width = 153
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = Button15Click
    end
  end
  object PnAddSector: TPanel
    Left = 85
    Top = 523
    Width = 951
    Height = 267
    Caption = 'PnAddOA'
    TabOrder = 4
    Visible = False
    object Label12: TLabel
      Left = 350
      Top = 14
      Width = 134
      Height = 13
      Caption = 'Adaugare/Editare  Sectoare'
    end
    object DBGrid3: TDBGrid
      Left = 22
      Top = 33
      Width = 907
      Height = 183
      DataSource = RedRapListGrup.DSSectoare
      TabOrder = 0
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DENUMIREA'
          Width = 146
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SUPRAFATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADANCIUNEA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SECT1'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SECT2'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SECT3'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'SECT4'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'INDPESECT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NR STATII'
          Visible = True
        end>
    end
    object Button16: TButton
      Left = 40
      Top = 222
      Width = 153
      Height = 25
      Caption = 'Ok'
      TabOrder = 1
      OnClick = Button16Click
    end
    object Button17: TButton
      Left = 756
      Top = 222
      Width = 153
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = Button17Click
    end
  end
  object PnAddProbe_H: TPanel
    Left = 150
    Top = 521
    Width = 951
    Height = 267
    Caption = 'PnAddOA'
    TabOrder = 5
    Visible = False
    object Label11: TLabel
      Left = 350
      Top = 12
      Width = 129
      Height = 13
      Caption = 'Adaugare/Editare  Probe H'
    end
    object DBGrid4: TDBGrid
      Left = 22
      Top = 33
      Width = 907
      Height = 183
      DataSource = RedRapListGrup.DSProbe_H
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'COD SECTORUL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'COD'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA'
          Width = 70
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
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ADANCIMEA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CARACTERULUI FACISULUI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TEMPERATURA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TR APEI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PH'
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N-NH4'
          Width = 49
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N-NO2'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'N-NO3'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NMIN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NORG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P-PO3-4'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PORG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DI'
          Visible = True
        end>
    end
    object Button18: TButton
      Left = 40
      Top = 222
      Width = 153
      Height = 25
      Caption = 'Ok'
      TabOrder = 1
      OnClick = Button18Click
    end
    object Button19: TButton
      Left = 756
      Top = 222
      Width = 153
      Height = 25
      Cancel = True
      Caption = 'Cancel'
      TabOrder = 2
      OnClick = Button19Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 32
    Top = 296
    object File1: TMenuItem
      Caption = '     File      '
      object Inchide: TMenuItem
        Caption = 'Inchide'
        OnClick = InchideClick
      end
    end
    object Redactare: TMenuItem
      Caption = '   Redactare   '
      object ListaSpecii1: TMenuItem
        Caption = 'Lista Specii'
        OnClick = ListaSpecii1Click
      end
      object RedactareProbe1: TMenuItem
        Caption = 'Redactare Probe'
        OnClick = RedactareProbe1Click
      end
    end
    object Rapoarte1: TMenuItem
      Caption = '   Rapoarte   '
      OnClick = Rapoarte1Click
      object otalRecalcul1: TMenuItem
        Caption = 'Total Recalcul'
      end
      object NSPNB1: TMenuItem
        Caption = 'NSP + N/B'
      end
      object ListeaSpecdealge1: TMenuItem
        Caption = 'Listea Spec  de alge'
      end
      object Indecelesaprobic1: TMenuItem
        Caption = 'Indecele saprobic'
      end
    end
  end
  object Timer1: TTimer
    Interval = 5000
    OnTimer = Timer1Timer
    Left = 1064
    Top = 424
  end
end
