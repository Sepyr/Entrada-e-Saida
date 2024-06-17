object frm_cadastroaluno: Tfrm_cadastroaluno
  Left = 0
  Top = 0
  Caption = 'Cadastro Alunos'
  ClientHeight = 299
  ClientWidth = 599
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 216
    Top = 242
    Width = 121
    Height = 49
    Caption = 'Cadastrar Responsaveis'
    OnClick = SpeedButton1Click
  end
  object Label1: TLabel
    Left = 32
    Top = 67
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 48
    Top = 128
    Width = 30
    Height = 13
    Caption = 'Turma'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 48
    Top = 24
    Width = 43
    Height = 13
    Caption = 'matricula'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 86
    Width = 260
    Height = 21
    DataField = 'nome'
    DataSource = dtm.ds_cadastro_alunos
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 48
    Top = 147
    Width = 134
    Height = 21
    DataField = 'Turma'
    DataSource = dtm.ds_cadastro_alunos
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 48
    Top = 40
    Width = 134
    Height = 21
    DataField = 'matricula'
    DataSource = dtm.ds_cadastro_alunos
    TabOrder = 2
  end
end
