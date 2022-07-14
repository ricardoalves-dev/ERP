unit ERP.View.Configuracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TFConfiguracoes = class(TForm)
    pnlClient: TPanel;
    pnlTitulo: TPanel;
    pnlBotao: TPanel;
    edtServidor: TEdit;
    edtPorta: TEdit;
    pnlCliente: TPanel;
    btnSair: TSpeedButton;
    edtBaseDados: TButtonedEdit;
    imgList1: TImageList;
    pnlBotaoSalvar: TPanel;
    pnlBotaoTestar: TPanel;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure pnlBotaoTestarClick(Sender: TObject);
    procedure pnlBotaoSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FConfiguracoes: TFConfiguracoes;

implementation

uses
  ERP.Connection.ConexaoDBExpress, ERP.Classes.Secao;

{$R *.dfm}

procedure TFConfiguracoes.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TFConfiguracoes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFConfiguracoes.FormCreate(Sender: TObject);
begin
  ActiveControl := pnlClient;
end;

procedure TFConfiguracoes.pnlBotaoSalvarClick(Sender: TObject);
begin

  TSecao
    .getInstance
      .ConexaoBD
        .Parametros
          .Host(edtServidor.Text)
          .Porta(edtPorta.Text)
          .BaseDeDados(edtBaseDados.Text)
          .Gravar;
end;

procedure TFConfiguracoes.pnlBotaoTestarClick(Sender: TObject);
begin

  try
    TConexaoDBExpress.New()
                        .Parametros
                          .Host(edtServidor.Text)
                          .Porta(edtPorta.Text)
                          .Usuario('SYSDBA')
                          .Senha('masterkey')
                          .BaseDeDados(edtBaseDados.Text)
                          .&End
                       .Conectar

  except on E:Exception do
    //
  end;
end;

end.

