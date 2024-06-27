unit unt_cadastro_alunos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, Vcl.DBActns, System.Actions, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan;

type
  Tfrm_cadastroaluno = class(TForm)
    SpeedButton1: TSpeedButton;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    ActionManager1: TActionManager;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    DBGrid1: TDBGrid;
    DatasetInsert1: TDataSetInsert;
    DatasetDelete1: TDataSetDelete;
    DatasetEdit1: TDataSetEdit;
    DatasetPost1: TDataSetPost;
    DatasetCancel1: TDataSetCancel;
    SpeedButton7: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var aluno: Integer;
    var nome_aluno: string;
  end;

var
  frm_cadastroaluno: Tfrm_cadastroaluno;

implementation

{$R *.dfm}

uses unt_cadastro_responsaveis, unt_dm, unt_vinculo_responsavel;

procedure Tfrm_cadastroaluno.SpeedButton1Click(Sender: TObject);
begin
frm_cadastro_responsaveis.Show;
end;

procedure Tfrm_cadastroaluno.SpeedButton4Click(Sender: TObject);
begin
dtm.cadastro_alunos.Post;
aluno:= dtm.cadastro_alunosmatricula.Value;
nome_aluno:= dtm.cadastro_alunosnome.Value;
begin
if
 messagedlg('Deseja vincular um responsável a esse aluno?',mtWarning,[mbYes,mbNo],0) = mrYes Then
begin
 frm_vinculo_responsavel.Aluno.Caption:= nome_aluno;
 frm_vinculo_responsavel.Show;
end;
end;
end;

procedure Tfrm_cadastroaluno.SpeedButton7Click(Sender: TObject);
begin
frm_vinculo_responsavel.Show;
end;

end.
