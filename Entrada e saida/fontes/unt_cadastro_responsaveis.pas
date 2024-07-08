unit unt_cadastro_responsaveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Buttons;

type
  Tfrm_cadastro_responsaveis = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ActionManager1: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    edt_busca_responsaveis: TEdit;
    Label4: TLabel;
    procedure DBEdit2Click(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure edt_busca_responsaveisChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastro_responsaveis: Tfrm_cadastro_responsaveis;

implementation

{$R *.dfm}

uses unt_dm;



procedure Tfrm_cadastro_responsaveis.DBEdit2Click(Sender: TObject);
begin
  DBEdit2.SelStart:=1;
end;

procedure Tfrm_cadastro_responsaveis.DBEdit3Click(Sender: TObject);
begin
  DBEdit3.SelStart:=0;
end;

procedure Tfrm_cadastro_responsaveis.edt_busca_responsaveisChange(Sender: TObject);
begin
if Length(edt_busca_responsaveis.Text)>0 then
begin
  with dtm.cadastro_responsaveis do
  begin
    close;
    sql.Clear;
    sql.Add('Select * from responsaveis WHERE nome like :nome');
    ParamByName('nome').Value:='%'+edt_busca_responsaveis.Text+'%';
    Open();
  end;
end
else
begin
     with dtm.cadastro_responsaveis do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT * from responsaveis');
    Open();
  end;
end;
end;

procedure Tfrm_cadastro_responsaveis.SpeedButton3Click(Sender: TObject);
begin
if
 messagedlg('Excluir o Registro?',mtWarning,[mbYes,mbNo],0) = mrYes Then
begin
  dtm.cadastro_responsaveis.delete;
end;
end;
end.
