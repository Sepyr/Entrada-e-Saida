unit unt_dm;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.MySQL, FireDAC.Comp.UI;

type
  Tdtm = class(TDataModule)
    login: TFDQuery;
    conexao: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    ds_login: TDataSource;
    loginid: TFDAutoIncField;
    loginnome: TStringField;
    loginusuario: TStringField;
    loginsenha: TStringField;
    cadastro_pedagogas: TFDQuery;
    ds_cadastro_pedagogas: TDataSource;
    cadastro_pedagogasid: TFDAutoIncField;
    cadastro_pedagogasnome: TStringField;
    cadastro_pedagogasusuario: TStringField;
    cadastro_pedagogassenha: TStringField;
    saidas: TFDQuery;
    ds_saidas: TDataSource;
    entradas: TFDQuery;
    ds_entrada: TDataSource;
    cadastro_responsaveis: TFDQuery;
    ds_cadastro_responsaveis: TDataSource;
    cadastro_responsaveisnome: TStringField;
    cadastro_responsaveistelefone: TStringField;
    cadastro_responsaveisid: TFDAutoIncField;
    cadastro_responsaveiscpf: TStringField;
    cadastro_curso: TFDQuery;
    ds_cadastro_curso: TDataSource;
    cadastro_cursoid: TFDAutoIncField;
    cadastro_cursocurso: TStringField;
    cadastro_turmas: TFDQuery;
    ds_cadastro_turmas: TDataSource;
    cadastro_turmasid: TFDAutoIncField;
    cadastro_turmasserie: TStringField;
    cadastro_turmasturma: TIntegerField;
    cadastro_turmassala: TIntegerField;
    cadastro_turmasCurso: TIntegerField;
    cadastro_turmasnew_curso: TStringField;
    cadastro_alunos: TFDQuery;
    ds_cadastro_alunos: TDataSource;
    cadastro_alunosmatricula: TIntegerField;
    cadastro_alunosnome: TStringField;
    cadastro_alunosTurma: TIntegerField;
    vinculo_responsavel: TFDQuery;
    ds_vinculo_responsavel: TDataSource;
    vinculo_responsavelid: TFDAutoIncField;
    vinculo_responsavelaluno: TIntegerField;
    vinculo_responsavelresponsavel: TIntegerField;
    vinculo_responsavelgrau_de_parentesco: TStringField;
    busca_responsavel: TFDQuery;
    ds_busca_responsavel: TDataSource;
    busca_responsavelid: TFDAutoIncField;
    busca_responsavelnome: TStringField;
    busca_responsaveltelefone: TStringField;
    busca_responsavelcpf: TStringField;
    busca_alunos: TFDQuery;
    ds_busca_alunos1: TDataSource;
    view_resp: TFDQuery;
    ds_view_resp: TDataSource;
    view_respid: TFDAutoIncField;
    view_respmatricula: TIntegerField;
    view_respnomedoaluno: TStringField;
    view_respidresponsavel: TFDAutoIncField;
    view_respnome: TStringField;
    view_respgrau_de_parentesco: TStringField;
    campo_turma: TFDQuery;
    ds_campo_turma: TDataSource;
    campo_turmaid: TFDAutoIncField;
    campo_turmaTurma: TStringField;
    busca_alunosmatricula: TIntegerField;
    busca_alunosnome: TStringField;
    busca_alunosTurma: TStringField;
    entradasid: TFDAutoIncField;
    entradasdata: TDateField;
    entradashorario: TTimeField;
    entradasjustificativa: TStringField;
    entradasAluno: TIntegerField;
    entradasPedagoga: TIntegerField;
    entradastempo_atraso: TTimeField;
    saidasid: TFDAutoIncField;
    saidasdata: TDateField;
    saidashorario: TTimeField;
    saidasjustificativa: TStringField;
    saidasAluno: TIntegerField;
    saidasPedagoga: TIntegerField;
    saidastempo_adiantado: TTimeField;
    procedure cadastro_pedagogasBeforePost(DataSet: TDataSet);
    procedure cadastro_responsaveisBeforePost(DataSet: TDataSet);
    procedure cadastro_cursoBeforePost(DataSet: TDataSet);
    procedure cadastro_turmasBeforePost(DataSet: TDataSet);
    procedure cadastro_alunosBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dtm: Tdtm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdtm.cadastro_alunosBeforePost(DataSet: TDataSet);
begin
if dtm.cadastro_alunosmatricula.IsNull then
raise Exception.Create('O campo Matricula não pode ficar em branco');
if dtm.cadastro_alunosnome.IsNull then
raise Exception.Create('O campo Nome não pode ficar em branco');
if dtm.campo_turmaTurma.IsNull then
raise Exception.Create('O campo Turma não pode ficar em branco');
end;

procedure Tdtm.cadastro_cursoBeforePost(DataSet: TDataSet);
begin
if dtm.cadastro_cursocurso.IsNull then
raise Exception.Create('O campo Curso não pode ficar em branco');
end;

procedure Tdtm.cadastro_pedagogasBeforePost(DataSet: TDataSet);
begin
if dtm.cadastro_pedagogasnome.IsNull then
raise Exception.Create('O campo Nome não pode ficar em branco.');
if dtm.cadastro_pedagogasusuario.IsNull then
raise Exception.Create('O campo Usuário não pode ficar em branco.');
if dtm.cadastro_pedagogassenha.IsNull then
raise Exception.Create('O campo Senha não pode ficar em branco.');

end;


procedure Tdtm.cadastro_responsaveisBeforePost(DataSet: TDataSet);
begin
if dtm.cadastro_responsaveisnome.IsNull then
raise Exception.Create('O campo Nome não pode ficar em branco');
if dtm.cadastro_responsaveiscpf.IsNull then
raise Exception.Create('O campo CPF não pode ficar em branco');
if dtm.cadastro_responsaveistelefone.IsNull then
raise Exception.Create('O campo Telefone não pode ficar em branco');

end;

procedure Tdtm.cadastro_turmasBeforePost(DataSet: TDataSet);
begin
if dtm.cadastro_turmasserie.IsNull then
raise Exception.Create('O campo Serie não pode ficar em branco');
if dtm.cadastro_turmasturma.IsNull then
raise Exception.Create('O campo Turma não pode ficar em branco');
if dtm.cadastro_turmassala.IsNull then
raise Exception.Create('O campo Sala não pode ficar em branco');
if dtm.cadastro_turmasCurso.IsNull then
raise Exception.Create('O campo Curso não pode ficar em branco');
end;

end.
