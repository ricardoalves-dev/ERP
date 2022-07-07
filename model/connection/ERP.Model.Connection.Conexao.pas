unit ERP.Model.Connection.Conexao;

interface

uses
  ERP.Model.Connection.Interfaces,
  Data.DB,
  ERP.Model.Connection.ParametrosConexaoDB;

type
  TModelConexaoDB = class(TInterfacedObject, iModelConexaoBD)
    protected
      FConexao    : TCustomConnection;
      FParametros : iModelParametrosConexaoBD;
    public
      constructor Create; virtual;
      destructor Destroy; override;
      class function New: iModelConexaoBD;

      function Conectar: Boolean; virtual;
      function Parametros: iModelParametrosConexaoBD;
      function Conexao: TCustomConnection;
  end;


implementation

{ TModelConexaoDB }

constructor TModelConexaoDB.Create;
begin
  FParametros := TParametrosConexaoDB.New(Self);
end;

destructor TModelConexaoDB.Destroy;
begin
  //
  inherited;
end;

class function TModelConexaoDB.New: iModelConexaoBD;
begin
  Result := Self.Create;
end;

function TModelConexaoDB.Parametros: iModelParametrosConexaoBD;
begin
  Result := FParametros;
end;

function TModelConexaoDB.Conectar: Boolean;
begin

  FConexao.Connected := False;
  FConexao.Connected := True;

  Result := FConexao.Connected;
end;

function TModelConexaoDB.Conexao: TCustomConnection;
begin
  Result := FConexao;
end;

end.

