unit UFrmCadPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Data.Win.ADODB,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, Xml.xmldom,
  Xml.XMLIntf, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Xml.Win.msxmldom, Xml.XMLDoc, System.Math;

type
  TReturnCEP = record
    Logradouro: string;
    Bairro: string;
    Cidade: string;
    Uf: string;
    IBGE: string;
  end;


type
  TFrmCadPessoas = class(TFrmPadrao)
    Label1: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    EdtDataCad: TDBEdit;
    Label5: TLabel;
    EdtNome: TDBEdit;
    EdtNomeRed: TDBEdit;
    LblNome: TLabel;
    LblNomeRedu: TLabel;
    EdtCPFCNPJ: TDBEdit;
    EdtRGIE: TDBEdit;
    LblCPFCNPJ: TLabel;
    LblRGIE: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel2: TPanel;
    EdtCEP: TDBEdit;
    Label12: TLabel;
    Label6: TLabel;
    EdtEndereco: TDBEdit;
    Label7: TLabel;
    EdtBairro: TDBEdit;
    Label8: TLabel;
    EdtCodIBGE: TDBEdit;
    Label9: TLabel;
    EdtNumero: TDBEdit;
    Label13: TLabel;
    EdtComplemento: TDBEdit;
    Label14: TLabel;
    EdtCidade: TDBEdit;
    Label15: TLabel;
    EdtEstado: TDBEdit;
    Label16: TLabel;
    EdtNumero1: TDBEdit;
    EdtTelefone2: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    EdtEmail: TDBEdit;
    BtnPesq: TSpeedButton;
    XMLDocument1: TXMLDocument;
    CbTipoPessoa: TDBComboBox;
    Qry: TADOQuery;
    Ds: TDataSource;
    Qryid_pessoa: TAutoIncField;
    Qrydt_cadastro: TDateField;
    Qryfl_pf_pj: TIntegerField;
    Qrynm_razaosocial: TWideStringField;
    Qrynm_reduzido: TWideStringField;
    Qrycpf_cnpj: TWideStringField;
    Qryrg_ie: TWideStringField;
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
    RgTipo: TDBRadioGroup;
    CbConsumidor: TDBComboBox;
    Qrynm_consumidor: TWideStringField;
    PnlCancela: TPanel;
    BtnCancela: TSpeedButton;
    PnlConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    Qrynm_tipopessoa: TWideStringField;
    procedure BtnPesqClick(Sender: TObject);
    procedure EdtCPFCNPJExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure RgTipoClick(Sender: TObject);
    procedure QryBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtCEPExit(Sender: TObject);
  private
    function ConsultaCEP(CEP: string): TReturnCEP;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPessoas: TFrmCadPessoas;

implementation

uses UValidaDados, UFrmProdutos, UFrmPessoas;

{$R *.dfm}

procedure TFrmCadPessoas.BtnCancelaClick(Sender: TObject);
begin
  inherited;
  Qry.CancelUpdates;
  Qry.Refresh;

  Close;
end;

procedure TFrmCadPessoas.BtnConfirmaClick(Sender: TObject);
begin
  inherited;

  VerificarCampoNulo(Qrynm_tipopessoa, 'Necessário preencher o Tipo de Pessoa.');
  VerificarCampoNulo(Qryfl_pf_pj, 'Necessário preencher se é Pessoa Fisíca ou Pessoa Júridica.');
  VerificarCampoNulo(Qrynm_razaosocial, 'Necessário preencher o Nome / Razão Social.');
  VerificarCampoNulo(Qrynm_reduzido, 'Necessário preencher o Nome Reduzido / Fantasia.');
  VerificarCampoNulo(Qrycpf_cnpj, 'Necessário preencher o CPF / CNPJ.');
  VerificarCampoNulo(Qryrg_ie, 'Necessário preencher o RG / IE.');
  VerificarCampoNulo(Qrynm_consumidor, 'Necessário preencher o Tipo de Consumidor');
  VerificarCampoNulo(Qrynm_logradouro, 'Necessário preencher o Endereço.');
  VerificarCampoNulo(Qrynm_numero, 'Necessário preencher o Número.');
  VerificarCampoNulo(Qrynm_bairro, 'Necessário preencher o Bairro.');
  VerificarCampoNulo(Qryid_ibge, 'Necessário preencher o Cód. Municipio;');
  VerificarCampoNulo(Qrynm_cidade, 'Necessário preencher a Cidade.');
  VerificarCampoNulo(Qrynm_estado, 'Necessário preencher o Estado.');
  VerificarCampoNulo(Qrynm_telefone1, 'Necessário preencher o Telefone');

  try
    Qry.Post;
    Qry.Refresh;
  finally
    MessageDlg('Informação adicionada / editada com sucesso.', mtConfirmation, [mbOk], 0);
    BtnCancela.Enabled := False;
  end;

end;

procedure TFrmCadPessoas.BtnPesqClick(Sender: TObject);
var
  Return :TReturnCEP;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  try
    Return := ConsultaCEP(EdtCEP.Text);

    Qrynm_logradouro.AsString := Return.Logradouro;
    Qrynm_bairro.AsString   := Return.Bairro;
    Qrynm_cidade.AsString   := Return.Cidade;
    Qrynm_estado.AsString   := Return.Uf;
    Qryid_ibge.AsString  := Return.IBGE;
  finally
    Screen.Cursor := crDefault;
  end;
end;

procedure TFrmCadPessoas.EdtCEPExit(Sender: TObject);
begin
  inherited;
  BtnPesq.Click
end;

procedure TFrmCadPessoas.EdtCPFCNPJExit(Sender: TObject);
begin
  inherited;
  if Trim(EdtCPFCNPJ.Text) = '' then
    Exit;

  if Qryfl_pf_pj.Value = 1  then
  begin
    if not isCPF(EdtCPFCNPJ.Text) then
    begin
      ShowMessage('CPF Invalido');
    end;

  end else if Qryfl_pf_pj.Value = 2  then
  begin
    if not isCNPJ(EdtCPFCNPJ.Text) then
    begin
      ShowMessage('CNPJ Invalido');
    end;

  end;

end;

procedure TFrmCadPessoas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Qry.State in [dsInsert, dsEdit] then
    Qry.CancelUpdates;
end;

procedure TFrmCadPessoas.FormCreate(Sender: TObject);
begin
  inherited;
  Qry.Parameters.ParamByName('pessoa').Value := FrmPessoas.Qry.FieldByName('id_pessoa').Value;
  Qry.Open;
end;

procedure TFrmCadPessoas.QryBeforePost(DataSet: TDataSet);
begin
  inherited;
  if Qry.State = dsInsert then
      Qrydt_cadastro.Value := Now;
end;

procedure TFrmCadPessoas.RgTipoClick(Sender: TObject);
begin
  inherited;
  if RgTipo.ItemIndex = 0 then
  begin
    LblNome.Caption := 'Nome';
    LblNomeRedu.Caption := 'Nome Reduzido';
    LblCPFCNPJ.Caption := 'CPF';
    LblRGIE.Caption := 'RG';

    Qrycpf_cnpj.EditMask := '999 999 999\-99;0;_';
  end
  else if RgTipo.ItemIndex = 1 then
  begin
    LblNome.Caption := 'Razão Social';
    LblNomeRedu.Caption := 'Nome Fantasia';
    LblCPFCNPJ.Caption := 'CNPJ';
    LblRGIE.Caption := 'Inscrição Estadual';

    Qrycpf_cnpj.EditMask := '99 999 999\/9999\-99;0;_';
  end;
end;

function TFrmCadPessoas.ConsultaCEP(CEP: string): TReturnCEP;
var
  tempXML: IXMLNode;
begin
  if CEP.IsEmpty then
    raise Exception.Create('Necessário preencher o CEP.');

  try
    try
      XMLDocument1.FileName := 'https://viacep.com.br/ws/' + Trim(CEP) + '/xml/';
      XMLDocument1.Active := True;

      tempXML := XMLDocument1.DocumentElement;

      // Verifica se o XML foi carregado corretamente
      if Assigned(tempXML) then
      begin
        Result.Logradouro := tempXML.ChildValues['logradouro'];
        Result.Bairro := tempXML.ChildValues['bairro'];
        Result.Cidade := tempXML.ChildValues['localidade'];
        Result.Uf := tempXML.ChildValues['uf'];
        Result.IBGE := tempXML.ChildValues['ibge'];
      end
      else
      begin
        raise Exception.Create('O XML não foi carregado corretamente.');
      end;

    except
      on E: Exception do
      begin
        raise Exception.Create('Error retrieving or parsing XML: ' + E.Message);
      end;
    end;

  finally
    XMLDocument1.Active := False;
  end;


end;

end.
