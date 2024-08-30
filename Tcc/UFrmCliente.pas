unit UFrmCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, System.ImageList,
  Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.DBCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

type
  TFrmCliente = class(TFrmPadrao)
    PnlPesq: TPanel;
    BtnPesq: TSpeedButton;
    CbTipo: TComboBox;
    EdtPesq: TEdit;
    DBGrid1: TDBGrid;
    PnlEditar: TPanel;
    BtnEditar: TSpeedButton;
    PnlExclui: TPanel;
    BtnExclui: TSpeedButton;
    PnlNovo: TPanel;
    BtnNovo: TSpeedButton;
    Qry: TADOQuery;
    Ds: TDataSource;
    Qryid_pessoa: TAutoIncField;
    Qrydt_cadastro: TDateField;
    Qryfl_pf_pj: TIntegerField;
    Qrynm_razaosocial: TWideStringField;
    Qrynm_reduzido: TWideStringField;
    Qrycpf_cnpj: TWideStringField;
    Qryrg_ie: TWideStringField;
    Qrynm_consumidor: TWideStringField;
    Qrycep: TWideStringField;
    Qrynm_logradouro: TWideStringField;
    Qrynm_numero: TIntegerField;
    Qrynm_complemento: TWideStringField;
    Qrynm_bairro: TWideStringField;
    Qryid_ibge: TIntegerField;
    Qrynm_cidade: TWideStringField;
    Qrynm_estado: TWideStringField;
    Qrynm_telefone1: TWideStringField;
    Qrynm_telefone2: TWideStringField;
    Qrynm_email: TWideStringField;
    Qrynew_tablecol: TWideStringField;
    Qrynm_tipopessoa: TWideStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnPesqClick(Sender: TObject);
    procedure BtnExcluiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCliente: TFrmCliente;

implementation

{$R *.dfm}

uses UFrmCadCliente, UFrmPrincipal, UFrmCadPessoas;

procedure TFrmCliente.BtnEditarClick(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;

    FrmCadPessoas := TFrmCadPessoas.Create(Self);
    FrmCadPessoas.Qry.Edit;
    FrmCadPessoas.Show;

    Screen.Cursor := crDefault;
  except
    FrmCadPessoas.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCliente.BtnExcluiClick(Sender: TObject);
begin
  inherited;
    if MessageDlg('Deseja realmente excluir esse produto?', mtConfirmation, [mbYes,mbNo], 0) = mrYes then
  begin
    try
      Qry.Delete;
    finally
      MessageDlg('Produto excluido com sucesso.', mtConfirmation, [mbOk], 0);
      Qry.Refresh;
    end;
  end;
end;

procedure TFrmCliente.BtnNovoClick(Sender: TObject);
begin
  inherited;
  try
    Screen.Cursor := crHourGlass;

    FrmCadPessoas := TFrmCadPessoas.Create(Self);
    FrmCadPessoas.Qry.Append;
    FrmCadPessoas.Show;

    Screen.Cursor := crDefault;
  except
    FrmCadPessoas.Free;
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCliente.BtnPesqClick(Sender: TObject);
begin
  inherited;

  if Trim(EdtPesq.Text) = '' then
  begin
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT * FROM sistema.pessoas ORDER BY id_pessoa');
    Qry.Open;
    Exit;
  end;

  if CbTipo.ItemIndex = 0 then
  begin
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT * FROM sistema.pessoas WHERE nm_tipopessoa = ''Cliente'' and nm_razaosocial like :nome');
    Qry.Parameters.ParamByName('nome').Value :=  '%' + EdtPesq.text + '%';
    Qry.Open;
  end
  else if CbTipo.ItemIndex = 1 then
  begin
    Qry.Close;
    Qry.SQL.Clear;
    Qry.SQL.Add('SELECT * FROM sistema.pessoas WHERE nm_tipopessoa = ''Fornecedor'' and nm_razaosocial like :nome');
    Qry.Parameters.ParamByName('nome').Value := '%' + EdtPesq.text + '%';
    Qry.Open;
  end;
end;

procedure TFrmCliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
    FrmPrincipal.MostrarPainel;
end;

procedure TFrmCliente.FormShow(Sender: TObject);
begin
  inherited;
  Qry.Open;
end;


end.
