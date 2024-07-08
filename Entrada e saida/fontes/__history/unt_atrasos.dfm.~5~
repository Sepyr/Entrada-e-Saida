object frm_atrasos: Tfrm_atrasos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Registro de Atraso'
  ClientHeight = 495
  ClientWidth = 916
  Color = 12363958
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 232
    Top = 56
    Width = 440
    Height = 45
    Caption = 'Entrada Atrasada de Alunos'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 696
    Top = 256
    Width = 22
    Height = 13
    Caption = 'data'
    FocusControl = DBEdit1
  end
  object Label3: TLabel
    Left = 696
    Top = 296
    Width = 34
    Height = 13
    Caption = 'horario'
    FocusControl = DBEdit2
  end
  object Label4: TLabel
    Left = 480
    Top = 376
    Width = 55
    Height = 13
    Caption = 'justificativa'
    FocusControl = DBEdit3
  end
  object Label5: TLabel
    Left = 88
    Top = 133
    Width = 27
    Height = 13
    Caption = 'Aluno'
  end
  object Label6: TLabel
    Left = 696
    Top = 416
    Width = 48
    Height = 13
    Caption = 'Pedagoga'
    FocusControl = DBEdit5
  end
  object DBEdit1: TDBEdit
    Left = 696
    Top = 272
    Width = 134
    Height = 21
    DataField = 'data'
    DataSource = dtm.ds_entrada_atrasada
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 696
    Top = 312
    Width = 134
    Height = 21
    DataField = 'horario'
    DataSource = dtm.ds_entrada_atrasada
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 448
    Top = 413
    Width = 168
    Height = 21
    DataField = 'justificativa'
    DataSource = dtm.ds_entrada_atrasada
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 696
    Top = 432
    Width = 134
    Height = 21
    DataField = 'Pedagoga'
    DataSource = dtm.ds_entrada_atrasada
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 189
    Width = 441
    Height = 120
    DataSource = dtm.ds_busca_alunos1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt_buscaaluno1: TEdit
    Left = 88
    Top = 152
    Width = 121
    Height = 21
    TabOrder = 5
    OnChange = edt_buscaaluno1Change
  end
end
