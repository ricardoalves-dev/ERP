unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.SqlExpr, Data.DBXFirebird, Vcl.StdCtrls, Data.FMTBcd, ERP.Model.Connection.Interfaces;

type
  TForm1 = class(TForm)
    btn1: TButton;
    con1: TSQLConnection;
    SQLDS1: TSQLDataSet;
    procedure btn1Click(Sender: TObject);
  private
    FConexao: iModelConexaoBD;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  ERP.Model.Connection.ConexaoDBExpress;

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
  FConexao := TConexaoDBExpress.New();

  FConexao
    .Parametros
      .Host('192.168.254.234')
      .Porta(3054)
      .Driver('Firebird')
      .BaseDeDados('H:\Compartilhada\Bancos\Esporte Legal(Certificado)\COMERCIAL.FDB')
      .Usuario('SYSDBA')
      .Senha('masterkey')
      .&End
    .Conectar;

  if FConexao.Conexao.Connected then
    ShowMessage('conectado');
end;

end.

