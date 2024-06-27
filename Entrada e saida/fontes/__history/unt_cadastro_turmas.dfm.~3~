object frm_cadastro_turmas: Tfrm_cadastro_turmas
  Left = 0
  Top = 0
  Caption = 'Cadastrar Turma'
  ClientHeight = 410
  ClientWidth = 422
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
    Left = 32
    Top = 16
    Width = 24
    Height = 13
    Caption = 'Serie'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 32
    Top = 53
    Width = 30
    Height = 13
    Caption = 'Turma'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 32
    Top = 96
    Width = 20
    Height = 13
    Caption = 'Sala'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 32
    Top = 136
    Width = 28
    Height = 13
    Caption = 'Curso'
  end
  object SpeedButton2: TSpeedButton
    Left = 32
    Top = 192
    Width = 66
    Height = 38
    Action = DatasetInsert1
    Caption = 'Inserir'
  end
  object SpeedButton3: TSpeedButton
    Left = 112
    Top = 192
    Width = 66
    Height = 38
    Action = DatasetEdit1
    Caption = 'Editar'
  end
  object SpeedButton4: TSpeedButton
    Left = 184
    Top = 193
    Width = 66
    Height = 37
    Action = DatasetDelete1
    Caption = 'Deletar'
  end
  object SpeedButton5: TSpeedButton
    Left = 256
    Top = 192
    Width = 66
    Height = 37
    Action = DatasetPost1
    Caption = 'Salvar'
  end
  object SpeedButton6: TSpeedButton
    Left = 328
    Top = 193
    Width = 66
    Height = 38
    Action = DatasetCancel1
    Caption = 'Cancelar'
  end
  object DBEdit1: TDBEdit
    Left = 32
    Top = 32
    Width = 134
    Height = 21
    DataField = 'serie'
    DataSource = dtm.ds_cadastro_turmas
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 32
    Top = 72
    Width = 134
    Height = 21
    DataField = 'turma'
    DataSource = dtm.ds_cadastro_turmas
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 32
    Top = 112
    Width = 134
    Height = 21
    DataField = 'sala'
    DataSource = dtm.ds_cadastro_turmas
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 32
    Top = 155
    Width = 145
    Height = 21
    DataField = 'Curso'
    DataSource = dtm.ds_cadastro_turmas
    KeyField = 'id'
    ListField = 'curso'
    ListSource = dtm.ds_cadastro_curso
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 250
    Width = 353
    Height = 120
    DataSource = dtm.ds_cadastro_turmas
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = 'C'#243'digo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'serie'
        Title.Caption = 'Serie'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'turma'
        Title.Caption = 'Turma'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sala'
        Title.Caption = 'Sala'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'new_curso'
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
    Left = 344
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
