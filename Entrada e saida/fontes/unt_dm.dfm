object dtm: Tdtm
  OldCreateOrder = False
  Height = 618
  Width = 960
  object login: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM sistema.pedagogas')
    Left = 64
    Top = 208
    object loginid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object loginnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object loginusuario: TStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 40
    end
    object loginsenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
    end
  end
  object conexao: TFDConnection
    Params.Strings = (
      'Database=sistema'
      'User_Name=root'
      'Password=root'
      'DriverID=mySQL')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 48
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 280
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\Users\ALUNO21\Music\Entrada e saida\fontes\libmysql.dll'
    Left = 104
    Top = 8
  end
  object ds_login: TDataSource
    DataSet = login
    Left = 64
    Top = 272
  end
  object cadastro_pedagogas: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM sistema.pedagogas')
    Left = 184
    Top = 224
    object cadastro_pedagogasid: TFDAutoIncField
      DisplayWidth = 7
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cadastro_pedagogasnome: TStringField
      DisplayWidth = 21
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 45
    end
    object cadastro_pedagogasusuario: TStringField
      DisplayWidth = 46
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 40
    end
    object cadastro_pedagogassenha: TStringField
      DisplayWidth = 24
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
    end
  end
  object ds_cadastro_pedagogas: TDataSource
    DataSet = cadastro_pedagogas
    Left = 176
    Top = 280
  end
  object saidas: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM saidas')
    Left = 408
    Top = 232
    object saidasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object saidasdata: TDateField
      FieldName = 'data'
      Origin = '`data`'
      Required = True
    end
    object saidashorario: TTimeField
      FieldName = 'horario'
      Origin = 'horario'
      Required = True
    end
    object saidasjustificativa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'justificativa'
      Origin = 'justificativa'
      Size = 255
    end
    object saidasAluno: TIntegerField
      FieldName = 'Aluno'
      Origin = 'Aluno'
      Required = True
    end
    object saidasPedagoga: TIntegerField
      FieldName = 'Pedagoga'
      Origin = 'Pedagoga'
      Required = True
    end
  end
  object ds_saidas: TDataSource
    DataSet = saidas
    Left = 392
    Top = 320
  end
  object entradas: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM entradas')
    Left = 288
    Top = 232
    object entradasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object entradasdata: TDateField
      FieldName = 'data'
      Origin = '`data`'
      Required = True
    end
    object entradashorario: TTimeField
      FieldName = 'horario'
      Origin = 'horario'
      Required = True
    end
    object entradasjustificativa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'justificativa'
      Origin = 'justificativa'
      Size = 255
    end
    object entradasAluno: TIntegerField
      FieldName = 'Aluno'
      Origin = 'Aluno'
      Required = True
    end
    object entradasPedagoga: TIntegerField
      FieldName = 'Pedagoga'
      Origin = 'Pedagoga'
      Required = True
    end
  end
  object ds_entrada: TDataSource
    DataSet = entradas
    Left = 296
    Top = 304
  end
end
