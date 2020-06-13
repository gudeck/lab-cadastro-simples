unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PanelBotoes: TPanel;
    PanelCrud: TPanel;
    ButtonInserir: TButton;
    ButtonNovo: TButton;
    ButtonListar: TButton;
    ContainerCrud: TPageControl;
    AbaDados: TTabSheet;
    AbaBuscar: TTabSheet;
    AbaListar: TTabSheet;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
