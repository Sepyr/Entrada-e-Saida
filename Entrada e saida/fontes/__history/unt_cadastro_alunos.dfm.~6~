object frm_cadastroaluno: Tfrm_cadastroaluno
  Left = 0
  Top = 0
  Caption = 'Cadastro Alunos'
  ClientHeight = 444
  ClientWidth = 705
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
  object SpeedButton1: TSpeedButton
    Left = 544
    Top = 137
    Width = 129
    Height = 49
    Caption = 'Cadastrar Responsaveis'
    Visible = False
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
    Left = 32
    Top = 121
    Width = 24
    Height = 13
    Caption = 'Serie'
  end
  object Label3: TLabel
    Left = 32
    Top = 21
    Width = 43
    Height = 13
    Caption = 'matricula'
    FocusControl = DBEdit3
  end
  object SpeedButton2: TSpeedButton
    Left = 40
    Top = 246
    Width = 58
    Height = 39
    Action = DatasetInsert1
  end
  object SpeedButton3: TSpeedButton
    Left = 104
    Top = 246
    Width = 58
    Height = 41
    Action = DatasetEdit1
  end
  object SpeedButton4: TSpeedButton
    Left = 231
    Top = 244
    Width = 58
    Height = 43
    Action = DatasetPost1
    OnClick = SpeedButton4Click
  end
  object SpeedButton5: TSpeedButton
    Left = 295
    Top = 246
    Width = 58
    Height = 41
    Action = DatasetCancel1
  end
  object SpeedButton6: TSpeedButton
    Left = 168
    Top = 246
    Width = 57
    Height = 41
    Action = DatasetDelete1
  end
  object SpeedButton7: TSpeedButton
    Left = 544
    Top = 192
    Width = 129
    Height = 54
    Caption = 'Vincular Respons'#225'veis'
    OnClick = SpeedButton7Click
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
  object DBEdit3: TDBEdit
    Left = 32
    Top = 40
    Width = 134
    Height = 21
    DataField = 'matricula'
    DataSource = dtm.ds_cadastro_alunos
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 32
    Top = 140
    Width = 145
    Height = 21
    DataField = 'Turma'
    DataSource = dtm.ds_cadastro_alunos
    KeyField = 'id'
    ListField = 'serie'
    ListSource = dtm.ds_cadastro_turmas
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 48
    Top = 309
    Width = 633
    Height = 120
    DataSource = dtm.ds_cadastro_alunos
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ActionManager1: TActionManager
    Left = 632
    Top = 24
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
