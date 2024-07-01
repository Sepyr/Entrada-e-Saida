unit unt_cadastro_cursos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Buttons, Vcl.DBActns,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfrm_cadastrar_curso = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    ActionManager1: TActionManager;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cadastrar_curso: Tfrm_cadastrar_curso;

implementation

{$R *.dfm}

uses unt_dm;

procedure Tfrm_cadastrar_curso.SpeedButton3Click(Sender: TObject);
begin
if
 messagedlg('Excluir o Registro?',mtWarning,[mbYes,mbNo],0) = mrYes Then
begin
  dtm.cadastro_curso.delete;
end;
end;

end.
