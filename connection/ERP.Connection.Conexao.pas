unit ERP.Connection.Conexao;

interface

uses
  ERP.Connection.Interfaces,
  Data.DB,
  ERP.Connection.ParametrosConexaoDB;

type
  TConexaoDB = class abstract(TInterfacedObject, iConexaoBD)
    protected
      FConexao    : TCustomConnection;
      FParametros : iParametrosConexaoBD;
      constructor Create; virtual;
    public
      destructor Destroy; override;
      class function New: iConexaoBD;

      function Conectar: Boolean; virtual;
      function Parametros: iParametrosConexaoBD;
      function Conexao: TCustomConnection;
  end;


implementation

{ TModelConexaoDB }

constructor TConexaoDB.Create;
begin
  FParametros := TParametrosConexaoDB.New(Self);
end;

destructor TConexaoDB.Destroy;
begin
  //
  inherited;
end;

class function TConexaoDB.New: iConexaoBD;
begin
  Result := Self.Create;
end;

function TConexaoDB.Parametros: iParametrosConexaoBD;
begin
  Result := FParametros;
end;

function TConexaoDB.Conectar: Boolean;
begin
  FConexao.LoginPrompt := False;
  FConexao.Connected   := False;
  FConexao.Connected   := True;

  Result := FConexao.Connected;
end;

function TConexaoDB.Conexao: TCustomConnection;
begin
  Result := FConexao;
end;

end.

