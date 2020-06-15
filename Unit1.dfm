object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Disciplinas'
  ClientHeight = 311
  ClientWidth = 482
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  DesignSize = (
    482
    311)
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotoes: TPanel
    Left = 0
    Top = 0
    Width = 482
    Height = 75
    Anchors = [akLeft, akTop, akRight]
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 734
    object ButtonInserir: TButton
      Left = 25
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
      OnClick = ButtonInserirClick
    end
    object ButtonNovo: TButton
      Left = 106
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = ButtonNovoClick
    end
    object ButtonListar: TButton
      Left = 187
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Listar'
      TabOrder = 2
      OnClick = ButtonListarClick
    end
  end
  object PanelCrud: TPanel
    Left = 0
    Top = 75
    Width = 485
    Height = 240
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    ExplicitWidth = 737
    ExplicitHeight = 390
    object ContainerCrud: TPageControl
      Left = 1
      Top = 1
      Width = 483
      Height = 238
      ActivePage = AbaListar
      Align = alClient
      TabOrder = 0
      OnChange = ContainerCrudChange
      ExplicitLeft = 2
      ExplicitTop = 6
      ExplicitWidth = 485
      ExplicitHeight = 250
      object AbaDados: TTabSheet
        Caption = 'Dados'
        ExplicitHeight = 205
        object LabelMedia: TLabel
          Left = 232
          Top = 9
          Width = 28
          Height = 13
          Caption = 'M'#233'dia'
          Color = clWhite
          ParentColor = False
        end
        object LabelDescricao: TLabel
          Left = 20
          Top = 54
          Width = 46
          Height = 13
          Caption = 'Descricao'
          Color = clWhite
          ParentColor = False
        end
        object LabelDataCriacao: TLabel
          Left = 292
          Top = 9
          Width = 62
          Height = 13
          Caption = 'Data Cria'#231#227'o'
          Color = clWhite
          ParentColor = False
        end
        object EditNome: TLabeledEdit
          Left = 20
          Top = 25
          Width = 198
          Height = 21
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          EditLabel.Color = clWhite
          EditLabel.ParentColor = False
          MaxLength = 80
          TabOrder = 0
        end
        object EditMedia: TMaskEdit
          Left = 232
          Top = 25
          Width = 44
          Height = 21
          EditMask = '##,##;0; '
          MaxLength = 5
          TabOrder = 1
          Text = ''
        end
        object EditDescricao: TMemo
          Left = 20
          Top = 71
          Width = 435
          Height = 125
          MaxLength = 400
          TabOrder = 4
        end
        object CheckBoxOpcional: TCheckBox
          Left = 388
          Top = 27
          Width = 67
          Height = 17
          Caption = 'Opcional'
          TabOrder = 3
        end
        object EditDataCriacao: TDateTimePicker
          Left = 292
          Top = 25
          Width = 82
          Height = 21
          Time = 0.433053587963513600
          TabOrder = 2
        end
      end
      object AbaBuscar: TTabSheet
        Caption = 'Buscar'
        ImageIndex = 1
        ExplicitLeft = 6
        object EditBuscaId: TLabeledEdit
          Left = 20
          Top = 25
          Width = 121
          Height = 21
          EditLabel.Width = 33
          EditLabel.Height = 13
          EditLabel.Caption = 'C'#243'digo'
          TabOrder = 0
        end
        object EditBuscaNome: TLabeledEdit
          Left = 20
          Top = 71
          Width = 121
          Height = 21
          EditLabel.Width = 27
          EditLabel.Height = 13
          EditLabel.Caption = 'Nome'
          TabOrder = 1
        end
        object ButtonId: TButton
          Left = 182
          Top = 23
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 2
          OnClick = ButtonIdClick
        end
        object ButtonNome: TButton
          Left = 182
          Top = 71
          Width = 75
          Height = 25
          Caption = 'Buscar'
          TabOrder = 3
          OnClick = ButtonNomeClick
        end
      end
      object AbaListar: TTabSheet
        Caption = 'Listar'
        ImageIndex = 2
        ExplicitWidth = 727
        ExplicitHeight = 360
        object EditListagem: TMemo
          Left = 0
          Top = 0
          Width = 475
          Height = 210
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 482
          ExplicitHeight = 311
        end
      end
    end
  end
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=SenhaF0rte123;Persist Security Info' +
      '=True;User ID=sa;Initial Catalog=lab;Network Address=localhost'
    Provider = 'SQLOLEDB.1'
  end
  object ADOQuery: TADOQuery
    Connection = ADOConnection
    Parameters = <>
    Left = 32
  end
end
