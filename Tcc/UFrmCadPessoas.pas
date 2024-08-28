unit UFrmCadPessoas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UFrmPadrao, Data.DB, Data.Win.ADODB,
  System.ImageList, Vcl.ImgList, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, Xml.xmldom,
  Xml.XMLIntf, IdBaseComponent, IdComponent, IdIOHandler, IdIOHandlerSocket,
  IdIOHandlerStack, IdSSL, IdSSLOpenSSL, Xml.Win.msxmldom, Xml.XMLDoc;

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
    CbTipoPessoa: TComboBox;
    Label3: TLabel;
    EdtDataCad: TDBEdit;
    Label5: TLabel;
    RadioGroup1: TRadioGroup;
    EdtNome: TDBEdit;
    EdtNomeRed: TDBEdit;
    LblNome: TLabel;
    LblNomeRedu: TLabel;
    EdtCPFCNPJ: TDBEdit;
    EdtRGIE: TDBEdit;
    LblCPFCNPJ: TLabel;
    LblRGIE: TLabel;
    ComboBox2: TComboBox;
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
    SSLIO: TIdSSLIOHandlerSocketOpenSSL;
    Edit1: TEdit;
    procedure CbTipoPessoaChange(Sender: TObject);
    procedure BtnPesqClick(Sender: TObject);
  private
  function ConsultaCEP(CEP :string):TReturnCEP;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadPessoas: TFrmCadPessoas;

implementation

{$R *.dfm}

procedure TFrmCadPessoas.BtnPesqClick(Sender: TObject);
var
  Return :TReturnCEP;
begin
  inherited;
  Screen.Cursor := crHourGlass;
  Return := ConsultaCEP(Edit1.Text);

  EdtEndereco.Text := Return.Logradouro;
  EdtBairro.Text   := Return.Bairro;
  EdtCidade.Text   := Return.Cidade;
  EdtEstado.Text   := Return.Uf;
  EdtCodIBGE.Text  := Return.IBGE;
  Screen.Cursor := crDefault;
end;

procedure TFrmCadPessoas.CbTipoPessoaChange(Sender: TObject);
begin
  inherited;
  if CbTipoPessoa.ItemIndex = 0 then
  begin
    LblNome.Caption := 'Nome';
    LblNomeRedu.Caption := 'Nome Reduzido';
    LblCPFCNPJ.Caption := 'CPF';
    LblRGIE.Caption := 'RG';
  end
  else if CbTipoPessoa.ItemIndex = 1 then
  begin
    LblNome.Caption := 'Razão Social';
    LblNomeRedu.Caption := 'Nome Fantasia';
    LblCPFCNPJ.Caption := 'CNPJ';
    LblRGIE.Caption := 'Inscrição Estadual';
  end;
end;

function TFrmCadPessoas.ConsultaCEP(CEP: string):TReturnCEP;
var
  tempXML :IXMLNode;
  tempNodePAI :IXMLNode;
  tempNodeFilho :IXMLNode;
  I :Integer;
begin
  XMLDocument1.FileName := 'https://viacep.com.br/ws/'+Trim(Cep)+ '/xml/';
  XMLDocument1.Active := true;
  tempXML := XMLDocument1.DocumentElement;

  tempNodePAI := tempXML.ChildNodes.FindNode('logradouro');
  for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
  begin
    tempNodeFilho := tempNodePAI.ChildNodes[i];
    Result.Logradouro := tempNodeFilho.Text;
  end;

  tempNodePAI := tempXML.ChildNodes.FindNode('bairro');
  for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
  begin
    tempNodeFilho := tempNodePAI.ChildNodes[i];
    Result.Bairro := tempNodeFilho.Text;
  end;

  tempNodePAI := tempXML.ChildNodes.FindNode('localidade');
  for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
  begin
    tempNodeFilho := tempNodePAI.ChildNodes[i];
    Result.Cidade := tempNodeFilho.Text;
  end;

  tempNodePAI := tempXML.ChildNodes.FindNode('uf');
  for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
  begin
    tempNodeFilho := tempNodePAI.ChildNodes[i];
    Result.Uf := tempNodeFilho.Text;
  end;

  tempNodePAI := tempXML.ChildNodes.FindNode('ibge');
  for i := 0 to tempNodePAI.ChildNodes.Count - 1 do
  begin
    tempNodeFilho := tempNodePAI.ChildNodes[i];
    Result.IBGE := tempNodePAI.Text;
  end;
end;

end.
