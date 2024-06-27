object dtm: Tdtm
  OldCreateOrder = False
  Height = 618
  Width = 960
  object login: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM sistema.pedagogas')
    Left = 16
    Top = 120
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
    Left = 24
    Top = 24
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 216
    Top = 24
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\ALUNO21\Music\Entrada-e-Saida\Entrada e saida\fontes\li' +
      'bmysql.dll'
    Left = 112
    Top = 24
  end
  object ds_login: TDataSource
    DataSet = login
    Left = 16
    Top = 184
  end
  object cadastro_pedagogas: TFDQuery
    Active = True
    BeforePost = cadastro_pedagogasBeforePost
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM sistema.pedagogas')
    Left = 104
    Top = 120
    object cadastro_pedagogasid: TFDAutoIncField
      DisplayWidth = 7
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    Left = 104
    Top = 184
  end
  object saidas: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM saidas')
    Left = 272
    Top = 120
    object saidasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    Left = 272
    Top = 184
  end
  object entradas: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM entradas')
    Left = 200
    Top = 120
    object entradasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
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
    Left = 200
    Top = 184
  end
  object cadastro_responsaveis: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM responsaveis')
    Left = 384
    Top = 120
    object cadastro_responsaveisnome: TStringField
      DisplayWidth = 12
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object cadastro_responsaveistelefone: TStringField
      DisplayWidth = 17
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      EditMask = '!\(99\)00000-0000;1;_'
      Size = 14
    end
    object cadastro_responsaveisid: TFDAutoIncField
      DisplayWidth = 12
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cadastro_responsaveiscpf: TStringField
      DisplayWidth = 13
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
      EditMask = '000\-000\-000\-00;1;_'
      Size = 11
    end
  end
  object ds_cadastro_responsaveis: TDataSource
    DataSet = cadastro_responsaveis
    Left = 384
    Top = 176
  end
  object cadastro_curso: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM cursos')
    Left = 520
    Top = 120
    object cadastro_cursoid: TFDAutoIncField
      DisplayWidth = 25
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cadastro_cursocurso: TStringField
      DisplayWidth = 54
      FieldName = 'curso'
      Origin = 'curso'
      Required = True
      Size = 45
    end
  end
  object ds_cadastro_curso: TDataSource
    DataSet = cadastro_curso
    Left = 528
    Top = 200
  end
  object cadastro_turmas: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM turmas')
    Left = 648
    Top = 120
    object cadastro_turmasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object cadastro_turmasserie: TStringField
      FieldName = 'serie'
      Origin = 'serie'
      Required = True
      Size = 10
    end
    object cadastro_turmasturma: TIntegerField
      FieldName = 'turma'
      Origin = 'turma'
      Required = True
    end
    object cadastro_turmassala: TIntegerField
      FieldName = 'sala'
      Origin = 'sala'
      Required = True
    end
    object cadastro_turmasCurso: TIntegerField
      FieldName = 'Curso'
      Origin = 'Curso'
      Required = True
    end
    object cadastro_turmasnew_curso: TStringField
      FieldKind = fkLookup
      FieldName = 'new_curso'
      LookupDataSet = cadastro_curso
      LookupKeyFields = 'id'
      LookupResultField = 'curso'
      KeyFields = 'Curso'
      Lookup = True
    end
  end
  object ds_cadastro_turmas: TDataSource
    DataSet = cadastro_turmas
    Left = 640
    Top = 200
  end
  object cadastro_alunos: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM alunos')
    Left = 464
    Top = 296
    object cadastro_alunosmatricula: TIntegerField
      DisplayWidth = 12
      FieldName = 'matricula'
      Origin = 'matricula'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cadastro_alunosnome: TStringField
      DisplayWidth = 12
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object cadastro_alunosTurma: TIntegerField
      DisplayWidth = 12
      FieldName = 'Turma'
      Origin = 'Turma'
      Required = True
    end
  end
  object ds_cadastro_alunos: TDataSource
    DataSet = cadastro_alunos
    Left = 464
    Top = 368
  end
  object vinculo_responsavel: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM sistema.aluno_responsavel;')
    Left = 608
    Top = 296
    object vinculo_responsavelid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object vinculo_responsavelaluno: TIntegerField
      FieldName = 'aluno'
      Origin = 'aluno'
      Required = True
    end
    object vinculo_responsavelresponsavel: TIntegerField
      FieldName = 'responsavel'
      Origin = 'responsavel'
      Required = True
    end
    object vinculo_responsavelgrau_de_parentesco: TStringField
      FieldName = 'grau_de_parentesco'
      Origin = 'grau_de_parentesco'
      Required = True
      FixedChar = True
      Size = 5
    end
  end
  object ds_vinculo_responsavel: TDataSource
    DataSet = vinculo_responsavel
    Left = 608
    Top = 360
  end
  object busca_responsavel: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM sistema.responsaveis;')
    Left = 752
    Top = 304
    object busca_responsavelid: TFDAutoIncField
      DisplayWidth = 17
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object busca_responsavelnome: TStringField
      DisplayWidth = 9
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object busca_responsaveltelefone: TStringField
      DisplayWidth = 17
      FieldName = 'telefone'
      Origin = 'telefone'
      Required = True
      Size = 14
    end
    object busca_responsavelcpf: TStringField
      DisplayWidth = 24
      FieldName = 'cpf'
      Origin = 'cpf'
      Required = True
    end
  end
  object ds_busca_responsavel: TDataSource
    DataSet = busca_responsavel
    Left = 760
    Top = 360
  end
  object entrada_atrasada: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM entradas')
    Left = 64
    Top = 312
    object entrada_atrasadaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object entrada_atrasadadata: TDateField
      FieldName = 'data'
      Origin = '`data`'
      Required = True
    end
    object entrada_atrasadahorario: TTimeField
      FieldName = 'horario'
      Origin = 'horario'
      Required = True
    end
    object entrada_atrasadajustificativa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'justificativa'
      Origin = 'justificativa'
      Size = 255
    end
    object entrada_atrasadaAluno: TIntegerField
      FieldName = 'Aluno'
      Origin = 'Aluno'
      Required = True
    end
    object entrada_atrasadaPedagoga: TIntegerField
      FieldName = 'Pedagoga'
      Origin = 'Pedagoga'
      Required = True
    end
  end
  object ds_entrada_atrasada: TDataSource
    DataSet = entrada_atrasada
    Left = 64
    Top = 408
  end
  object busca_alunos: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT * FROM alunos')
    Left = 216
    Top = 376
  end
  object ds_busca_alunos1: TDataSource
    DataSet = busca_alunos
    Left = 256
    Top = 456
  end
  object view_resp: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * from resp;')
    Left = 408
    Top = 464
    object view_respid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object view_respmatricula: TIntegerField
      FieldName = 'matricula'
      Origin = 'matricula'
      Required = True
    end
    object view_respnomedoaluno: TStringField
      FieldName = 'nome do aluno'
      Origin = '`nome do aluno`'
      Required = True
      Size = 80
    end
    object view_respidresponsavel: TFDAutoIncField
      FieldName = 'id responsavel'
      Origin = '`id responsavel`'
    end
    object view_respnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 80
    end
    object view_respgrau_de_parentesco: TStringField
      FieldName = 'grau_de_parentesco'
      Origin = 'grau_de_parentesco'
      Required = True
      FixedChar = True
      Size = 5
    end
  end
  object ds_view_resp: TDataSource
    DataSet = view_resp
    Left = 416
    Top = 528
  end
end
