object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Cadastro de Disciplinas'
  ClientHeight = 461
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    734
    461)
  PixelsPerInch = 96
  TextHeight = 13
  object PanelBotoes: TPanel
    Left = 0
    Top = 0
    Width = 734
    Height = 75
    Anchors = [akLeft, akTop, akRight]
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object ButtonInserir: TButton
      Left = 25
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 0
    end
    object ButtonNovo: TButton
      Left = 106
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
    end
    object ButtonListar: TButton
      Left = 187
      Top = 25
      Width = 75
      Height = 25
      Caption = 'Listar'
      TabOrder = 2
    end
  end
  object PanelCrud: TPanel
    Left = 0
    Top = 75
    Width = 737
    Height = 390
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 1
    object ContainerCrud: TPageControl
      Left = 1
      Top = 1
      Width = 735
      Height = 388
      ActivePage = AbaDados
      Align = alClient
      TabOrder = 0
      object AbaDados: TTabSheet
        Caption = 'Dados'
        object LabelMedia: TLabel
          Left = 193
          Top = 9
          Width = 28
          Height = 13
          Caption = 'M'#233'dia'
          Color = clWhite
          ParentColor = False
        end
        object LabelDescricao: TLabel
          Left = 20
          Top = 76
          Width = 46
          Height = 13
          Caption = 'Descricao'
          Color = clWhite
          ParentColor = False
        end
        object LabelDataCriacao: TLabel
          Left = 345
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
          Width = 121
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
          Left = 193
          Top = 25
          Width = 110
          Height = 21
          EditMask = '##,##;0; '
          MaxLength = 5
          TabOrder = 1
          Text = ''
        end
        object MemoDescricao: TMemo
          Left = 20
          Top = 92
          Width = 435
          Height = 125
          MaxLength = 400
          TabOrder = 2
        end
        object CheckBoxOpcional: TCheckBox
          Left = 20
          Top = 53
          Width = 97
          Height = 17
          Caption = 'Opcional'
          TabOrder = 3
        end
        object DatePickerDataCriacao: TDateTimePicker
          Left = 345
          Top = 25
          Width = 110
          Height = 21
          Date = 43995.000000000000000000
          Time = 0.433053587963513600
          TabOrder = 4
        end
      end
      object AbaBuscar: TTabSheet
        Caption = 'Buscar'
        ImageIndex = 1
      end
      object AbaListar: TTabSheet
        Caption = 'Listar'
        ImageIndex = 2
      end
    end
  end
end
