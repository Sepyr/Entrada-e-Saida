unit unt_saidas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Buttons, System.Actions, Vcl.ActnList, Vcl.DBActns,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfrm_saida = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    memo_justificativa: TMemo;
    DBGrid1: TDBGrid;
    busca_alunossaida: TEdit;
    SpeedButton2: TSpeedButton;
    Label3: TLabel;
    procedure busca_alunossaidaChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var tempo_adiantado, horario_saida, horario_atual:  Ttime;
  end;

var
  frm_saida: Tfrm_saida;

implementation

{$R *.dfm}

uses unt_dm, unt_login, unt_cadastro_alunos;

procedure Tfrm_saida.busca_alunossaidaChange(Sender: TObject);
begin
if Length(busca_alunossaida.Text)>0 then
begin
  with dtm.busca_alunos do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * FROM sistema.aluno_turma WHERE nome like :nome');
    ParamByName('nome').Value:='%'+busca_alunossaida.Text+'%';
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




procedure Tfrm_saida.SpeedButton1Click(Sender: TObject);
begin
horario_saida:= StrToTime('11:45');
horario_atual:= Time;
with dtm.saidas do
begin
  Close;
  sql.Clear;
  sql.Add('Insert into saidas(data,horario,justificativa,Aluno,Pedagoga,tempo_adiantado) Values(:data, :horario, :justificativa, :Aluno, :Pedagoga, :tempo_adiantado)');
  ParamByName('data').Value:= Date;
  ParamByName('horario').Value:= Time;
  tempo_adiantado:= horario_saida-horario_atual;
  ParamByName('justificativa').Value:= memo_justificativa.Text;
  ParamByName('Aluno').Value:=  dtm.busca_alunosmatricula.Value;
  ParamByName('Pedagoga').Value:= frm_login.pedagoga;
  ParamByName('tempo_adiantado').Value:= FormatDateTime('hh:mm:ss', tempo_adiantado);
  ExecSQL();
  ShowMessage('Saida Adiantada Registrada com sucesso. Tempo adiantado: '+TimeToStr(tempo_adiantado));
end;
end;

procedure Tfrm_saida.SpeedButton2Click(Sender: TObject);
begin
  frm_cadastroaluno.Show;
end;

end.
