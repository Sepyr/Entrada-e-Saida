unit unt_atrasos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_atrasos = class(TForm)
    Label1: TLabel;
    edt_busca_alunos: TEdit;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    memo_justificativa: TMemo;
    Label2: TLabel;
    Label3: TLabel;
    SpeedButton2: TSpeedButton;
    procedure edt_busca_alunosChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var tempo_atraso, horario_entrada, horario_atual:  Ttime;
  end;

var
  frm_atrasos: Tfrm_atrasos;

implementation

{$R *.dfm}

uses unt_dm, unt_login, unt_cadastro_alunos;

procedure Tfrm_atrasos.edt_busca_alunosChange(Sender: TObject);
begin
if Length(edt_busca_alunos.Text)>0 then
begin
  with dtm.busca_alunos do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM sistema.aluno_turma WHERE nome like :nome');
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
    sql.Add('SELECT * FROM sistema.aluno_turma');
    Open();
  end;
end;
end;

procedure Tfrm_atrasos.SpeedButton1Click(Sender: TObject);
begin
horario_entrada:= StrToTime('07:45');
horario_atual:= Time;

with dtm.entradas do
begin
  Close;
  sql.Clear;
  sql.Add('Insert into entradas(data,horario,justificativa,Aluno,Pedagoga,tempo_atraso) Values(:data, :horario, :justificativa, :Aluno, :Pedagoga, :tempo_atraso)');
  ParamByName('data').Value:= Date;
  ParamByName('horario').Value:= Time;
  tempo_atraso:= horario_atual-horario_entrada;
  ParamByName('justificativa').Value:= memo_justificativa.Text;
  ParamByName('Aluno').Value:=  dtm.busca_alunosmatricula.Value;
  ParamByName('Pedagoga').Value:= frm_login.pedagoga;
  ParamByName('tempo_atraso').Value:= FormatDateTime('hh:mm:ss', tempo_atraso);
  ExecSQL();
  ShowMessage('Atraso Registrado com sucesso. Tempo de atraso: '+TimeToStr(tempo_atraso));
end;
end;

procedure Tfrm_atrasos.SpeedButton2Click(Sender: TObject);
begin
frm_cadastroaluno.Show;
end;

end.
