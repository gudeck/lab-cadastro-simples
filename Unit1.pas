unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.Mask, Data.DB, Data.Win.ADODB;

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
    EditNome: TLabeledEdit;
    EditMedia: TMaskEdit;
    LabelMedia: TLabel;
    EditDescricao: TMemo;
    LabelDescricao: TLabel;
    CheckBoxOpcional: TCheckBox;
    EditDataCriacao: TDateTimePicker;
    LabelDataCriacao: TLabel;
    ADOConnection: TADOConnection;
    ADOQuery: TADOQuery;
    procedure ButtonInserirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonInserirClick(Sender: TObject);
begin

  ADOQuery.SQL.Text :=
    'INSERT INTO lab.cadastro.DISCIPLINA (NOME, DESCRICAO, MEDIA, OPCIONAL, DATA_CRIACAO)'
    + 'VALUES (:nome, :descricao, :media, :opcional, :dataCriacao)';

  ADOQuery.Parameters.ParamByName('nome').Value := EditNome.Text;
  ADOQuery.Parameters.ParamByName('descricao').Value := EditDescricao.Text;
  ADOQuery.Parameters.ParamByName('media').Value :=
    formatfloat('00.00', (StrToFloat(EditMedia.Text) / 100));
  ADOQuery.Parameters.ParamByName('opcional').Value := CheckBoxOpcional.Checked;
  ADOQuery.Parameters.ParamByName('dataCriacao').Value :=
    EditDataCriacao.DateTime;

  ADOQuery.ExecSQL;

end;

end.
