unit unt_vinculo_responsavel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_vinculo_responsavel = class(TForm)
    edt_busca: TEdit;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    SpeedButton1: TSpeedButton;
    Aluno: TLabel;
    SpeedButton2: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure edt_buscaChange(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
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
  ShowMessage('Sucesso');
end;
end;

procedure Tfrm_vinculo_responsavel.SpeedButton2Click(Sender: TObject);
begin
frm_cadastro_responsaveis.Show;
end;

end.
