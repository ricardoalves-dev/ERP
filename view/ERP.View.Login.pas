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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.

