unit unt_login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls;

type
  Tfrm_login = class(TForm)
    edt_user: TEdit;
    edt_senha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btn_login: TSpeedButton;
    procedure btn_loginClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure edt_senhaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    var pedagoga : Integer;
  end;

var
  frm_login: Tfrm_login;

implementation

{$R *.dfm}

uses unt_inicio, unt_dm, unt_cadastro_pedagogas, unt_adm;

procedure Tfrm_login.edt_senhaKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
btn_login.Click;
end;

procedure Tfrm_login.btn_loginClick(Sender: TObject);
begin
with dtm.login do
begin
    close;
    sql.clear;
    sql.add('SELECT * FROM sistema.pedagogas WHERE usuario= :usuario and senha= :senha');
    parambyname('usuario').VALUE:= edt_user.text;
    parambyname('senha').VALUE:= edt_senha.text;
    open;
   if(RecordCount)>0 then
   begin
   pedagoga:= dtm.loginid.Value;
           if dtm.loginusuario.value='ADMINISTRADOR' then
           begin
             frm_adm.Show;
             frm_login.Visible:=FALSE;
           end
           else
           begin
            frm_inicio.Show;
            frm_login.visible:=FALSE;
           end;

   end
   else
   begin
     ShowMessage('Usuario ou senha invalidos');
     edt_senha.TEXT:='';
     edt_user.SetFocus;
   end;
end;





end;

procedure Tfrm_login.SpeedButton2Click(Sender: TObject);
begin
frm_cadastro_pedagogas.Show;
end;

end.
