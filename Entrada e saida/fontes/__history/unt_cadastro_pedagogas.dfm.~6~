object frm_cadastro_pedagogas: Tfrm_cadastro_pedagogas
  Left = 0
  Top = 0
  Caption = 'Cadastro Usuarios'
  ClientHeight = 472
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object SpeedButton1: TSpeedButton
    Left = 54
    Top = 195
    Width = 67
    Height = 46
    Action = DatasetInsert1
    Caption = 'Inserir'
  end
  object SpeedButton2: TSpeedButton
    Left = 216
    Top = 195
    Width = 72
    Height = 46
    Action = DatasetDelete1
    Caption = 'Deletar'
  end
  object SpeedButton3: TSpeedButton
    Left = 144
    Top = 195
    Width = 66
    Height = 46
    Action = DatasetEdit1
    Caption = 'Editar'
  end
  object SpeedButton4: TSpeedButton
    Left = 301
    Top = 195
    Width = 76
    Height = 46
    Action = DatasetPost1
    Caption = 'Salvar'
  end
  object SpeedButton5: TSpeedButton
    Left = 392
    Top = 195
    Width = 81
    Height = 46
    Action = DatasetCancel1
    Caption = 'Cancelar'
  end
  object Label1: TLabel
    Left = 56
    Top = 56
    Width = 26
    Height = 13
    Caption = 'nome'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 56
    Top = 96
    Width = 35
    Height = 13
    Caption = 'usuario'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 56
    Top = 136
    Width = 29
    Height = 13
    Caption = 'senha'
    FocusControl = DBEdit3
  end
  object DBEdit1: TDBEdit
    Left = 56
    Top = 72
    Width = 589
    Height = 21
    DataField = 'nome'
    DataSource = dtm.ds_cadastro_pedagogas
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 56
    Top = 109
    Width = 524
    Height = 21
    DataField = 'usuario'
    DataSource = dtm.ds_cadastro_pedagogas
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 56
    Top = 152
    Width = 264
    Height = 21
    DataField = 'senha'
    DataSource = dtm.ds_cadastro_pedagogas
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 56
    Top = 288
    Width = 633
    Height = 120
    DataSource = dtm.ds_cadastro_pedagogas
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
    Left = 672
    Top = 104
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
