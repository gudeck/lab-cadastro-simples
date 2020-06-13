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
