object RedRapListGrup: TRedRapListGrup
  OldCreateOrder = False
  Height = 586
  Width = 1109
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=OraOLEDB.Oracle.1;Password=ZOO1000;Persist Security Inf' +
      'o=True;User ID=ZOO1000;Data Source=clouddev;Extended Properties=' +
      '""'
    Provider = 'OraOLEDB.Oracle.1'
    Left = 112
    Top = 96
  end
  object QRedRapListGrup: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'Select * from lista_grup_f'
    Parameters = <>
    Left = 96
    Top = 232
  end
  object DSRedRapListGrup: TDataSource
    DataSet = QRedRapListGrup
    Left = 96
    Top = 288
  end
  object QRedRapListaSpec: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select --*,'#13#10'    ls.cod_l,'#13#10'    ls.denumirea,'#13#10'    ls.masa,'#13#10'   ' +
      ' lsf.grupa,'#13#10'    lsf.s,'#13#10'    lsf.x,'#13#10'    lsf.O,'#13#10'    lsf.b,'#13#10'   ' +
      ' lsf.a,'#13#10'    lsf.p,'#13#10'    lsf.g,'#13#10'    lsf.s_1'#13#10' from lista_spec l' +
      's,lista_spec_f lsf'#13#10'  where ls.cod_n=LSF.COD_N '#13#10
    DataSource = DSRedRapListGrup
    IndexFieldNames = 'GRUPA'
    MasterFields = 'SIFR'
    Parameters = <
      item
        Name = 'GRUPA'
        DataType = ftWideString
        Size = 1
        Value = 'A'
      end>
    Left = 200
    Top = 232
  end
  object DSRedRapListaSpec: TDataSource
    DataSet = QRedRapListaSpec
    Left = 200
    Top = 288
  end
  object QObiectAcvatic: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from obiectele_acvatice '#13#10
    Parameters = <>
    Left = 304
    Top = 224
  end
  object DSObiectAcvatic: TDataSource
    DataSet = QObiectAcvatic
    Left = 304
    Top = 280
  end
  object DSSectoare: TDataSource
    DataSet = QSectoare
    Left = 392
    Top = 280
  end
  object QProbe_H: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from probe_h order by cod'
    DataSource = DSSectoare
    IndexFieldNames = 'COD_SECTORUL'
    MasterFields = 'COD'
    Parameters = <>
    Left = 496
    Top = 224
  end
  object DSProbe_H: TDataSource
    DataSet = QProbe_H
    Left = 496
    Top = 280
  end
  object QSpecii: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 
      'select cod_specii_n,'#13#10'(SELECT DENUMIREA FROM LISTA_SPEC S WHERE ' +
      'S.COD_L=L.COD_SPECII_TIP AND S.COD_N=L.COD_SPECII_N) DENUMIRE,'#13#10 +
      'deinstetate,cod_specii_tip,cod_prob_n,cod_prob_sect '#13#10'from probe' +
      '_l L;'
    DataSource = DSProbe_H
    IndexFieldNames = 'COD_PROB_N;COD_PROB_SECT'
    MasterFields = 'COD;COD_SECTORUL'
    Parameters = <>
    Left = 592
    Top = 224
  end
  object DSSpecii: TDataSource
    DataSet = QSpecii
    Left = 592
    Top = 280
  end
  object QAddSpecie: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from lista_spec'
    DataSource = DSSpecii
    Parameters = <>
    Left = 696
    Top = 224
  end
  object DSAddSpecie: TDataSource
    DataSet = QAddSpecie
    Left = 696
    Top = 280
  end
  object QSectoare: TADODataSet
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    CommandText = 'select * from sectoare'
    DataSource = DSObiectAcvatic
    IndexFieldNames = 'CODUL_OA'
    MasterFields = 'COD'
    Parameters = <>
    Left = 400
    Top = 232
  end
end
