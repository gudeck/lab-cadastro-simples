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
    EditBuscaId: TLabeledEdit;
    EditBuscaNome: TLabeledEdit;
    ButtonId: TButton;
    ButtonNome: TButton;
    procedure LimparCadastro;
    procedure LimparBusca;
    procedure PreencherCadastro;
    procedure ButtonInserirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ButtonIdClick(Sender: TObject);
    procedure ButtonNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ButtonIdClick(Sender: TObject);
begin
  ADOQuery.SQL.Text := 'SELECT * FROM lab.cadastro.DISCIPLINA WHERE ID=:id';
  ADOQuery.Parameters.ParamByName('id').Value := EditBuscaId.Text;
  ADOQuery.Open;
  PreencherCadastro;
end;

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

  try
    ADOQuery.ExecSQL;
    ShowMessage('Disciplina criada com sucesso!');
    LimparCadastro;
  except
    ShowMessage('Falha ao criar disciplina!');
  end;

end;

procedure TForm1.ButtonNomeClick(Sender: TObject);
begin
  ADOQuery.SQL.Text :=
    'SELECT * FROM lab.cadastro.DISCIPLINA WHERE NOME LIKE ''%' +
    EditBuscaNome.Text + '%''';
  ADOQuery.Open;
  PreencherCadastro;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  EditDataCriacao.Date := Now;
  ContainerCrud.ActivePageIndex := 0;
end;

procedure TForm1.LimparCadastro;
begin
  EditNome.Clear;
  EditMedia.Clear;
  EditDataCriacao.Date := Now;
  CheckBoxOpcional.Checked := false;
  EditDescricao.Clear;
end;

procedure TForm1.LimparBusca;
begin
  EditBuscaId.Clear;
  EditBuscaNome.Clear;
end;

procedure TForm1.PreencherCadastro;
begin
  if not ADOQuery.IsEmpty then
  begin
    EditNome.Text := ADOQuery.FieldByName('NOME').AsString;
    EditMedia.Text := ADOQuery.FieldByName('MEDIA').AsString;
    EditDataCriacao.Date := ADOQuery.FieldByName('DATA_CRIACAO').AsDateTime;
    CheckBoxOpcional.Checked := ADOQuery.FieldByName('OPCIONAL').AsBoolean;
    EditDescricao.Text := ADOQuery.FieldByName('DESCRICAO').AsString;

    ContainerCrud.ActivePageIndex := 0;
    LimparBusca;
  end
  else
    ShowMessage('Não foram encontrados registros.');
end;

end.
