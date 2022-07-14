unit ERP.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, JvExExtCtrls, JvExtComponent, JvPanel, Vcl.Buttons, Data.DB, Data.SqlExpr, ERP.Classes.Secao;

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
    procedure btnAcessarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  ERP.View.Configuracoes;

{$R *.dfm}

procedure TForm2.btnAcessarClick(Sender: TObject);
begin
  try
    TSecao
      .getInstance
        .Usuario
          .Nome(edtUsuario.Text)
          .Senha(edtSenha.Text)
          .Autenticar;
  except
    begin
      ShowMessage('Erro ao verificar parâmetros');
      FConfiguracoes := TFConfiguracoes.Create(Self);
      try
        if FConfiguracoes.ShowModal() <> mrOk then
          Application.Terminate;
      finally
        FreeAndNil(FConfiguracoes);
      end;
    end;

  end;

  // VERIFICAR USUÁRIO E SENHA

  // CONECTAR

end;

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

