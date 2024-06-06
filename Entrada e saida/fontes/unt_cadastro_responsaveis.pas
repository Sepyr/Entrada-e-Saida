unit unt_cadastro_responsaveis;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.DBActns, System.Actions, Vcl.ActnList,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.Buttons;

type
  Tfrm_cadastro_responsaveis = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
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
    procedure DBEdit2Click(Sender: TObject);
    procedure DBEdit3Click(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit3Enter(Sender: TObject);
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
 DBEdit2.SelStart:=1
end;

procedure Tfrm_cadastro_responsaveis.DBEdit2Enter(Sender: TObject);
begin
    DBEdit2.SelStart:=1;
end;

procedure Tfrm_cadastro_responsaveis.DBEdit3Click(Sender: TObject);
begin
  DBEdit3.SelStart:=0;
end;

procedure Tfrm_cadastro_responsaveis.DBEdit3Enter(Sender: TObject);
begin
DBEdit3.SelStart:=0;
end;

end.
