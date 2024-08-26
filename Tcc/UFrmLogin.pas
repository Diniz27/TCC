unit UFrmLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.pngimage,
  Vcl.StdCtrls, Shellapi, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons ;

type
  TFrmLogin = class(TForm)
    PnlLogin: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    LinkLabel1: TLinkLabel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure LinkLabel1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

procedure TFrmLogin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Application.Terminate;
end;

procedure TFrmLogin.FormCreate(Sender: TObject);
begin
  Label2.Caption := 'Sistema desenvolvido por estudantes do' + #13 +
                    'curso de Ciências da Computação.';
  LinkLabel1.Caption := '<a href="https://github.com/robson10mateus/Pojeto_TCC">Link GitHub</a>';
end;

procedure TFrmLogin.LinkLabel1Click(Sender: TObject);
begin
  ShellExecute(0, nil, PChar('https://github.com/robson10mateus/Pojeto_TCC'), nil, nil, 1);
end;

procedure TFrmLogin.SpeedButton1Click(Sender: TObject);
begin
  Frmlogin.Hide;
end;

procedure TFrmLogin.SpeedButton2Click(Sender: TObject);
begin
  Close;
end;

end.
