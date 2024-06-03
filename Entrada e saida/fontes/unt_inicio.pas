unit unt_inicio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.ExtCtrls;

type
  Tfrm_inicio = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Image1: TImage;
    Image2: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_inicio: Tfrm_inicio;

implementation

{$R *.dfm}

uses unt_login, unt_atrasos, unt_saidas;

procedure Tfrm_inicio.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frm_login.visible:=TRUE;
frm_login.Show;
end;

procedure Tfrm_inicio.SpeedButton1Click(Sender: TObject);
begin
frm_saida.Show;
end;

procedure Tfrm_inicio.SpeedButton2Click(Sender: TObject);
begin
frm_atrasos.Show;

end;

end.
