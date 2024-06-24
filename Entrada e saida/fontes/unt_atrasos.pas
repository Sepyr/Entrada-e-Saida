unit unt_atrasos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  Tfrm_atrasos = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DBGrid1: TDBGrid;
    edt_buscaaluno1: TEdit;
    procedure edt_buscaaluno1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_atrasos: Tfrm_atrasos;

implementation

{$R *.dfm}

uses unt_dm;

procedure Tfrm_atrasos.edt_buscaaluno1Change(Sender: TObject);
begin
if Length(edt_buscaaluno1.Text)>0 then
begin
  with dtm.busca_alunos do
  begin
    close;
    sql.Clear;
    sql.Add('Select * from alunos WHERE nome like :nome');
    ParamByName('nome').Value:='%'+edt_buscaaluno1.Text+'%';
    Open();
  end;
end;

end;

end.
