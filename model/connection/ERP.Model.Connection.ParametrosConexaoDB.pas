unit ERP.Model.Connection.ParametrosConexaoDB;

interface

uses
  ERP.Model.Connection.Interfaces,
  Data.DB;

type
  TParametrosConexaoDB = class(TInterfacedObject, iModelParametrosConexaoBD)
    protected
      FHost       : string;
      FPorta      : Integer;
      FUsuario    : string;
      FSenha      : string;
      FBaseDeDados: string;
      FDriver     : string;

      [weak] // Sem isso dá Memory Leak. Esse comando é necessário para não incrementar o ARC.
      FConexao    : iModelConexaoBD;

    public
      constructor Create(Conexao: iModelConexaoBD); virtual;
      destructor Destroy; override;
      class function New(Conexao: iModelConexaoBD): iModelParametrosConexaoBD;

      function Host(Value: string): iModelParametrosConexaoBD; overload;
      function Host: string; overload;
      function Porta(Value: Integer): iModelParametrosConexaoBD; overload;
      function Porta: Integer; overload;
      function Usuario(Value: string): iModelParametrosConexaoBD; overload;
      function Usuario: string; overload;
      function Senha(Value: string): iModelParametrosConexaoBD; overload;
      function Senha: string; overload;
      function BaseDeDados(Value: string): iModelParametrosConexaoBD; overload;
      function BaseDeDados: string; overload;
      function Driver(Value: string): iModelParametrosConexaoBD; overload;
      function Driver: string; overload;
      function &End: iModelConexaoBD;
  end;


implementation



{ TParametrosConexaoDB }

constructor TParametrosConexaoDB.Create(Conexao: iModelConexaoBD);
begin
  FConexao := Conexao;
end;

destructor TParametrosConexaoDB.Destroy;
begin
  //
  inherited;
end;

class function TParametrosConexaoDB.New(Conexao: iModelConexaoBD): iModelParametrosConexaoBD;
begin
  Result := Self.Create(Conexao);
end;

function TParametrosConexaoDB.Host(Value: string): iModelParametrosConexaoBD;
begin
  Result := Self;
  FHost  := Value;
end;

function TParametrosConexaoDB.Host: string;
begin
  Result := FHost;
end;

function TParametrosConexaoDB.Porta(Value: Integer): iModelParametrosConexaoBD;
begin
  Result := Self;
  FPorta := Value;
end;

function TParametrosConexaoDB.Porta: Integer;
begin
  Result := FPorta;
end;

function TParametrosConexaoDB.Usuario(Value: string): iModelParametrosConexaoBD;
begin
  Result   := Self;
  FUsuario := Value;
end;

function TParametrosConexaoDB.Usuario: string;
begin
  Result := FUsuario;
end;

function TParametrosConexaoDB.Senha(Value: string): iModelParametrosConexaoBD;
begin
  Result := Self;
  FSenha := Value;
end;

function TParametrosConexaoDB.Senha: string;
begin
  Result := FSenha;
end;

function TParametrosConexaoDB.BaseDeDados(Value: string): iModelParametrosConexaoBD;
begin
  Result       := Self;
  FBaseDeDados := Value;
end;

function TParametrosConexaoDB.BaseDeDados: string;
begin
  Result := FBaseDeDados;
end;

function TParametrosConexaoDB.Driver(Value: string): iModelParametrosConexaoBD;
begin
  Result  := Self;
  FDriver := Value;
end;

function TParametrosConexaoDB.Driver: string;
begin
  Result := FDriver;
end;

function TParametrosConexaoDB.&End: iModelConexaoBD;
begin
  Result := FConexao;
end;

end.

