unit ERP.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Buttons;

type
  TForm2 = class(TForm)
    pnlClient: TPanel;
    pnlTitulo: TPanel;
    pnlBotao: TPanel;
    btnAcessar: TSpeedButton;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    labRecuperarSenha: TLabel;
    pnlCliente: TPanel;
    btnSair: TSpeedButton;
    btnConfigurar: TSpeedButton;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
  ActiveControl := pnlClient;
end;

end.

