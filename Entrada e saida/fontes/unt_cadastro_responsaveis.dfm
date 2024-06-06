object frm_cadastro_responsaveis: Tfrm_cadastro_responsaveis
  Left = 0
  Top = 0
  Caption = 'Cadastro Responsaveis'
  ClientHeight = 393
  ClientWidth = 680
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 24
    Top = 56
    Width = 40
    Height = 13
    Caption = 'telefone'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 24
    Top = 96
    Width = 15
    Height = 13
    Caption = 'cpf'
    FocusControl = DBEdit3
  end
  object SpeedButton1: TSpeedButton
    Left = 40
    Top = 168
    Width = 42
    Height = 38
    Action = DatasetInsert1
    Caption = 'Inserir'
  end
  object SpeedButton2: TSpeedButton
    Left = 88
    Top = 168
    Width = 42
    Height = 38
    Action = DatasetEdit1
    Caption = 'Editar'
  end
  object SpeedButton3: TSpeedButton
    Left = 136
    Top = 168
    Width = 42
    Height = 38
    Action = DatasetDelete1
    Caption = 'Deletar'
  end
  object SpeedButton4: TSpeedButton
    Left = 184
    Top = 168
    Width = 42
    Height = 38
    Action = DatasetPost1
    Caption = 'Salvar'
  end
  object SpeedButton5: TSpeedButton
    Left = 232
    Top = 168
    Width = 41
    Height = 38
    Action = DatasetCancel1
    Caption = 'Cancelar'
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 35
    Width = 276
    Height = 21
    DataField = 'nome'
    DataSource = dtm.ds_cadastro_responsaveis
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 72
    Width = 180
    Height = 21
    DataField = 'telefone'
    DataSource = dtm.ds_cadastro_responsaveis
    MaxLength = 14
    ParentShowHint = False
    ShowHint = False
    TabOrder = 1
    OnClick = DBEdit2Click
    OnEnter = DBEdit2Enter
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 115
    Width = 147
    Height = 21
    DataField = 'cpf'
    DataSource = dtm.ds_cadastro_responsaveis
    MaxLength = 14
    TabOrder = 2
    OnClick = DBEdit3Click
    OnEnter = DBEdit3Enter
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 227
    Width = 601
    Height = 120
    DataSource = dtm.ds_cadastro_responsaveis
    Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'Matricula'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 69
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'nome'
        Title.Alignment = taCenter
        Title.Caption = 'Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 198
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'usuario'
        Title.Alignment = taCenter
        Title.Caption = 'Usu'#225'rio'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'senha'
        Title.Alignment = taCenter
        Title.Caption = 'Senha'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object ActionManager1: TActionManager
    Left = 536
    Top = 40
    StyleName = 'Platform Default'
    object DatasetInsert1: TDataSetInsert
      Category = 'Dataset'
      Caption = '&Insert'
      Hint = 'Insert'
      ImageIndex = 4
    end
    object DatasetDelete1: TDataSetDelete
      Category = 'Dataset'
      Caption = '&Delete'
      Hint = 'Delete'
      ImageIndex = 5
    end
    object DatasetEdit1: TDataSetEdit
      Category = 'Dataset'
      Caption = '&Edit'
      Hint = 'Edit'
      ImageIndex = 6
    end
    object DatasetPost1: TDataSetPost
      Category = 'Dataset'
      Caption = 'P&ost'
      Hint = 'Post'
      ImageIndex = 7
    end
    object DatasetCancel1: TDataSetCancel
      Category = 'Dataset'
      Caption = '&Cancel'
      Hint = 'Cancel'
      ImageIndex = 8
    end
  end
end
