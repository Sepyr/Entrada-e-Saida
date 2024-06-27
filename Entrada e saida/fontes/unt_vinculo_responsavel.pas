unit unt_vinculo_responsavel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  Tfrm_vinculo_responsavel = class(TForm)
    edt_busca: TEdit;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    Aluno: TLabel;
    SpeedButton2: TSpeedButton;
    Panel1: TPanel;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton3: TSpeedButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edt_buscaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure grid_resp;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_vinculo_responsavel: Tfrm_vinculo_responsavel;

implementation

{$R *.dfm}

uses unt_dm, unt_cadastro_alunos, unt_cadastro_responsaveis;

procedure Tfrm_vinculo_responsavel.edt_buscaChange(Sender: TObject);
begin
if Length(edt_busca.Text)>0 then
begin
  with dtm.busca_responsavel do
  begin
    close;
    sql.Clear;
    sql.Add('Select * from responsaveis WHERE nome like :nome');
    ParamByName('nome').Value:='%'+edt_busca.Text+'%';
    Open();
  end;
end
else
begin
     with dtm.busca_responsavel do
  begin
    close;
    sql.Clear;
    sql.Add('Select * from responsaveis');
    Open();
  end;
end;
end;

procedure Tfrm_vinculo_responsavel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action := caFree; // Libera o formulário da memória.
frm_vinculo_responsavel := Nil;     //deixa o form vazio
end;

procedure Tfrm_vinculo_responsavel.grid_resp;
begin
with dtm.view_resp do
     begin
       close;
       sql.Clear;
       sql.Add('select * from resp where matricula = :aluno1' );
       ParamByName('aluno1').Value:=dtm.cadastro_alunosmatricula.Value;
       Open();
       if RecordCount>=1 then
       begin
       Label2.Caption:=dtm.cadastro_alunosnome.Value;
           Panel1.Visible:=true;
       end;
     end;
end;

procedure Tfrm_vinculo_responsavel.SpeedButton1Click(Sender: TObject);
begin
with dtm.vinculo_responsavel do
 begin
close;
sql.Clear;
sql.Add('Insert into aluno_responsavel (aluno, responsavel, grau_de_parentesco) VALUES (:aluno,:responsavel,:grau)');
ParamByName('aluno').Value:=frm_cadastroaluno.aluno;
ParamByName('responsavel').Value:=dtm.busca_responsavelid.Value;
ParamByName('grau').Value:=ComboBox1.Text;
ExecSQL;
ShowMessage('Vinculo realizado com sucesso');
end;
grid_resp;
end;

procedure Tfrm_vinculo_responsavel.SpeedButton2Click(Sender: TObject);
begin
frm_cadastro_responsaveis.Show;
end;

procedure Tfrm_vinculo_responsavel.SpeedButton3Click(Sender: TObject);
begin
with dtm.vinculo_responsavel do
begin
  close;
  sql.Clear;
  sql.Add('delete from aluno_responsavel where id = :id');
  ParamByName('id').Value:=dtm.view_respid.Value;
  ExecSQL;
  ShowMessage('Vinculo deletado com sucesso');
end;
grid_resp;
end;

end.
