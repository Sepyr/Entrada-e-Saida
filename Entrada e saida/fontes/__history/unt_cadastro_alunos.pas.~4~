unit unt_cadastro_alunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfrm_cadastroaluno = class(TForm)
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastroaluno: Tfrm_cadastroaluno;

implementation

{$R *.dfm}

uses unt_cadastro_responsaveis, unt_dm;

procedure Tfrm_cadastroaluno.SpeedButton1Click(Sender: TObject);
begin
frm_cadastro_responsaveis.Show;
end;

end.
