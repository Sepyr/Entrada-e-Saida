object frm_cadastrar_curso: Tfrm_cadastrar_curso
  Left = 0
  Top = 0
  Caption = 'Cadastrar Cursos'
  ClientHeight = 374
  ClientWidth = 441
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
  object Label1: TLabel
    Left = 32
    Top = 40
    Width = 26
    Height = 13
    Caption = 'curso'
    FocusControl = DBEdit1
  end
  object SpeedButton1: TSpeedButton
    Left = 32
    Top = 136
    Width = 71
    Height = 38
    Action = DatasetInsert1
    Caption = 'Insert'
  end
  object SpeedButton2: TSpeedButton
    Left = 109
    Top = 136
    Width = 71
    Height = 38
    Action = DatasetEdit1
    Caption = 'Editar'
  end
  object SpeedButton3: TSpeedButton
    Left = 186
    Top = 136
    Width = 71
    Height = 38
    Action = DatasetDelete1
    Caption = 'Deletar'
  end
  object SpeedButton4: TSpeedButton
    Left = 263
    Top = 136
    Width = 71
    Height = 38
    Action = DatasetPost1
    Caption = 'Salvar'
  end
  object SpeedButton5: TSpeedButton
    Left = 340
    Top = 136
    Width = 71
    Height = 38
    Action = DatasetCancel1
    Caption = 'Cancelar'
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 59
    Width = 169
    Height = 32
    DataField = 'curso'
    DataSource = dtm.ds_cadastro_curso
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 224
    Width = 369
    Height = 120
    DataSource = dtm.ds_cadastro_curso
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Alignment = taCenter
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'curso'
        Title.Alignment = taCenter
        Title.Caption = 'Curso'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object ActionManager1: TActionManager
    Left = 376
    Top = 32
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
