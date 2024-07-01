unit unt_cadastro_alunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  Tfrm_cadastroaluno = class(TForm)
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    ActionManager1: TActionManager;
    SpeedButton2: TSpeedButton;
    btn_editar: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBGrid1: TDBGrid;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    btn_vincular_responsaveis: TSpeedButton;
    DBLookupComboBox2: TDBLookupComboBox;
    edt_busca_alunos: TEdit;
    Label4: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure btn_vincular_responsaveisClick(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure edt_busca_alunosChange(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
    var aluno: Integer;
    var nome_aluno: string;
  end;

var
  frm_cadastroaluno: Tfrm_cadastroaluno;

implementation

{$R *.dfm}

uses unt_cadastro_responsaveis, unt_dm, unt_vinculo_responsavel;

procedure Tfrm_cadastroaluno.DBGrid1CellClick(Column: TColumn);
begin
aluno:= dtm.cadastro_alunosmatricula.Value;
nome_aluno:= dtm.cadastro_alunosnome.Value;
end;

procedure Tfrm_cadastroaluno.edt_busca_alunosChange(Sender: TObject);
begin
if Length(edt_busca_alunos.Text)>0 then
begin
  with dtm.busca_alunos do
  begin
    close;
    sql.Clear;
    sql.Add('Select * from aluno_turma WHERE nome like :nome');
    ParamByName('nome').Value:='%'+edt_busca_alunos.Text+'%';
    Open();
  end;
end
else
begin
     with dtm.busca_alunos do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from aluno_turma');
    Open();
  end;
end;
end;


procedure Tfrm_cadastroaluno.SpeedButton1Click(Sender: TObject);
begin
frm_cadastro_responsaveis.Show;
end;

procedure Tfrm_cadastroaluno.btn_editarClick(Sender: TObject);
begin
btn_vincular_responsaveis.Enabled:= True;
end;

procedure Tfrm_cadastroaluno.SpeedButton4Click(Sender: TObject);
begin
dtm.cadastro_alunos.Post;
aluno:= dtm.cadastro_alunosmatricula.Value;
nome_aluno:= dtm.cadastro_alunosnome.Value;
begin
if
 messagedlg('Deseja vincular um responsável a esse aluno?',mtWarning,[mbYes,mbNo],0) = mrYes Then
begin
 frm_vinculo_responsavel:=Tfrm_vinculo_responsavel.Create(Self);
 frm_vinculo_responsavel.Aluno.Caption:= nome_aluno;
 frm_vinculo_responsavel.grid_resp;
 frm_vinculo_responsavel.Show;
end;
end;
end;

procedure Tfrm_cadastroaluno.SpeedButton6Click(Sender: TObject);
begin
if
 messagedlg('Excluir o Registro?',mtWarning,[mbYes,mbNo],0) = mrYes Then
begin
  dtm.cadastro_pedagogas.delete;
end;
end;

procedure Tfrm_cadastroaluno.btn_vincular_responsaveisClick(Sender: TObject);
begin
frm_vinculo_responsavel:=Tfrm_vinculo_responsavel.Create(Self);
frm_vinculo_responsavel.Aluno.Caption:= nome_aluno;
frm_vinculo_responsavel.grid_resp;
frm_vinculo_responsavel.Show;
end;

end.
