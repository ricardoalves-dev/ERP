unit ERP.Connection.ConexaoDBExpress;

interface

uses
  ERP.Connection.Conexao,
  Data.SqlExpr,
  System.SysUtils,
  Data.DBXCommon;

type
  TConexaoDBExpress = class sealed(TConexaoDB)

  protected
    constructor Create; override;
  public
    destructor Destroy; override;
    function Conectar: Boolean; override;

  end;

implementation

{ TConexaoDBExpress }

constructor TConexaoDBExpress.Create;
begin
  FConexao := TSQLConnection.Create(nil);
  inherited;
end;

destructor TConexaoDBExpress.Destroy;
begin
  FreeAndNil(FConexao);
  inherited;
end;

function TConexaoDBExpress.Conectar: Boolean;
begin

  Result := False;

  with (FConexao as TSQLConnection), (FConexao as TSQLConnection).Params do
  begin
    DriverName                           := FParametros.Driver;
    Values[TDBXPropertyNames.Database]   := FParametros.Host + '/' + FParametros.Porta.ToString + ':' + FParametros.BaseDeDados;
    Values[TDBXPropertyNames.UserName]   := FParametros.Usuario;
    Values[TDBXPropertyNames.Password]   := FParametros.Senha;
  end;

  inherited;
end;

end.

