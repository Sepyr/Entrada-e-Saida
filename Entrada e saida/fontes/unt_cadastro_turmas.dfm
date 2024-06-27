object frm_cadastro_turmas: Tfrm_cadastro_turmas
  Left = 0
  Top = 0
  Caption = 'Cadastrar Turma'
  ClientHeight = 471
  ClientWidth = 502
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
    Left = 24
    Top = 23
    Width = 38
    Height = 19
    Caption = 'Serie'
    FocusControl = DBEdit1
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 50
    Height = 19
    Caption = 'Turma'
    FocusControl = DBEdit2
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 151
    Width = 31
    Height = 19
    Caption = 'Sala'
    FocusControl = DBEdit3
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 24
    Top = 203
    Width = 45
    Height = 19
    Caption = 'Curso'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object SpeedButton2: TSpeedButton
    Left = 40
    Top = 272
    Width = 66
    Height = 38
    Action = DatasetInsert1
    Caption = 'Inserir'
  end
  object SpeedButton3: TSpeedButton
    Left = 120
    Top = 272
    Width = 66
    Height = 38
    Action = DatasetEdit1
    Caption = 'Editar'
  end
  object SpeedButton4: TSpeedButton
    Left = 192
    Top = 273
    Width = 66
    Height = 37
    Action = DatasetDelete1
    Caption = 'Deletar'
  end
  object SpeedButton5: TSpeedButton
    Left = 264
    Top = 272
    Width = 66
    Height = 37
    Action = DatasetPost1
    Caption = 'Salvar'
  end
  object SpeedButton6: TSpeedButton
    Left = 336
    Top = 271
    Width = 66
    Height = 38
    Action = DatasetCancel1
    Caption = 'Cancelar'
  end
  object SpeedButton1: TSpeedButton
    Left = 208
    Top = 222
    Width = 113
    Height = 27
    Caption = 'Cadastrar Curso'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object DBEdit1: TDBEdit
    Left = 24
    Top = 48
    Width = 134
    Height = 27
    DataField = 'serie'
    DataSource = dtm.ds_cadastro_turmas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 24
    Top = 113
    Width = 134
    Height = 27
    DataField = 'turma'
    DataSource = dtm.ds_cadastro_turmas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 24
    Top = 170
    Width = 134
    Height = 27
    DataField = 'sala'
    DataSource = dtm.ds_cadastro_turmas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 24
    Top = 222
    Width = 161
    Height = 27
    DataField = 'Curso'
    DataSource = dtm.ds_cadastro_turmas
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Constantia'
    Font.Style = []
    KeyField = 'id'
    ListField = 'curso'
    ListSource = dtm.ds_cadastro_curso
    ParentFont = False
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 40
    Top = 330
    Width = 377
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
        Width = 91
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
