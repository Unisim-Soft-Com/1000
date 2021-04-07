object AddSpecieForm: TAddSpecieForm
  Left = 0
  Top = 0
  Caption = 'AddSpecieForm'
  ClientHeight = 299
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
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
        Width = 420
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MASA'
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 24
    Top = 16
    Width = 49
    Height = 21
    NumbersOnly = True
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 87
    Top = 16
    Width = 322
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 424
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Cauta'
    TabOrder = 3
    OnClick = Button1Click
  end
end
