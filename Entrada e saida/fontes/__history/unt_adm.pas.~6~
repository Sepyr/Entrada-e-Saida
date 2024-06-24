unit unt_adm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons;

type
  Tfrm_adm = class(TForm)
    btn_cadastropedagogas: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_cadastropedagogasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_adm: Tfrm_adm;

implementation

{$R *.dfm}

uses unt_login, unt_cadastro_pedagogas, unt_cadastro_cursos, unt_dm,
  unt_cadastro_turmas, unt_cadastro_responsaveis;

procedure Tfrm_adm.btn_cadastropedagogasClick(Sender: TObject);
begin
frm_cadastro_pedagogas.Show
end;

procedure Tfrm_adm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frm_login.visible:=TRUE;
frm_login.Show;
end;

procedure Tfrm_adm.SpeedButton1Click(Sender: TObject);
begin
frm_cadastrar_curso.Show;
end;

procedure Tfrm_adm.SpeedButton2Click(Sender: TObject);
begin
frm_cadastro_turmas.Show;
end;

procedure Tfrm_adm.SpeedButton3Click(Sender: TObject);
begin
frm_cadastro_responsaveis.Show;
end;

end.
