unit UFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Shellapi, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Data.DB,
  Data.Win.ADODB ;

type
  TFrmLogin = class(TForm)
    PnlLogin: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    LinkLabel1: TLinkLabel;
    Label3: TLabel;
    Label4: TLabel;
    PnlConfirma: TPanel;
    BtnConfirma: TSpeedButton;
    PnlCancela: TPanel;
    BtnCancela: TSpeedButton;
    EdtUsuario: TEdit;
    EdtSenha: TEdit;
    QryLogin: TADOQuery;
    QryLoginid_usuarios: TIntegerField;
    QryLoginnm_usuarios: TWideStringField;
    QryLoginsenha: TWideStringField;
    PnlMensagem: TPanel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure LinkLabel1Click(Sender: TObject);
    procedure BtnCancelaClick(Sender: TObject);
    procedure BtnConfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ExibeMsg(msg: string);
    procedure EscondeMsg;
    procedure EdtUsuarioChange(Sender: TObject);
    procedure EdtSenhaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses UDmLogin, UFrmPrincipal;

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  FrmLogin.Free;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  DmLogin := TDmLogin.Create (Application);
  Label2.Caption := 'Sistema desenvolvido por estudantes do' + #13 +
                    'curso de Ciências da Computação.';
  LinkLabel1.Caption := '<a href="https://github.com/robson10mateus/Pojeto_TCC">Link GitHub</a>';

end;

procedure TFrmLogin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BtnConfirma.Click
  else if Key = #27 then
    BtnCancela.Click;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
  BringToFront;
  EdtUsuario.SetFocus;
end;

procedure TFrmLogin.LinkLabel1Click(Sender: TObject);
begin
  ShellExecute(0, nil, PChar('https://github.com/robson10mateus/Pojeto_TCC'), nil, nil, 1);
end;

procedure TFrmLogin.BtnConfirmaClick(Sender: TObject);
begin
  if EdtUsuario.Text = '' then
  begin
    ExibeMsg('Favor informar o usuario.');
    Exit
  end;

  if EdtSenha.Text = '' then
  begin
    ExibeMsg('Favor informar a senha.');
    Exit
  end;

  try
    QryLogin.Close;

    QryLogin.SQL.Clear;
    QryLogin.SQL.Text := 'SELECT NM_USUARIOS, ID_USUARIOS, SENHA FROM sistema.USUARIOS ' +
                         'WHERE NM_USUARIOS = :nm_usuario' +
                         ' AND SENHA = :senha';
    QryLogin.Parameters.ParamByName('nm_usuario').Value := EdtUsuario.Text;
    QryLogin.Parameters.ParamByName('senha').Value := EdtSenha.Text;

    QryLogin.Open;
  finally
    if QryLogin.RecordCount > 0 then
      Close
    else
      ExibeMsg('Usuario não encontrado.');
  end;
end;

procedure TFrmLogin.EdtSenhaChange(Sender: TObject);
begin
  if PnlMensagem.Visible then
    EscondeMsg;
end;

procedure TFrmLogin.EdtUsuarioChange(Sender: TObject);
begin
  if PnlMensagem.Visible then
    EscondeMsg;
end;

procedure TFrmLogin.EscondeMsg;
begin
  PnlMensagem.Visible := False;
  PnlMensagem.Caption := '';
end;

procedure TFrmLogin.ExibeMsg(msg: string);
begin
  PnlMensagem.Visible := True;
  PnlMensagem.Caption := msg;
end;

procedure TFrmLogin.BtnCancelaClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
