unit ERP.Connection.ParametrosConexaoDB;

interface

uses
  ERP.Connection.Interfaces,
  Data.DB;

type
  TParametrosConexaoDB = class(TInterfacedObject, iParametrosConexaoBD)
    private
      FHost       : string;
      FPorta      : Integer;
      FUsuario    : string;
      FSenha      : string;
      FBaseDeDados: string;
      FDriver     : string;

      [weak] // Sem isso dá Memory Leak. Esse comando é necessário para não incrementar o ARC.
      FConexao    : iConexaoBD;

    public
      constructor Create(Conexao: iConexaoBD); virtual;
      destructor Destroy; override;
      class function New(Conexao: iConexaoBD): iParametrosConexaoBD;

      function Host(Value: string): iParametrosConexaoBD; overload;
      function Host: string; overload;
      function Porta(Value: Integer): iParametrosConexaoBD; overload;
      function Porta: Integer; overload;
      function Usuario(Value: string): iParametrosConexaoBD; overload;
      function Usuario: string; overload;
      function Senha(Value: string): iParametrosConexaoBD; overload;
      function Senha: string; overload;
      function BaseDeDados(Value: string): iParametrosConexaoBD; overload;
      function BaseDeDados: string; overload;
      function Driver(Value: string): iParametrosConexaoBD; overload;
      function Driver: string; overload;
      function Gravar: Boolean;
      function &End: iConexaoBD;
  end;


implementation



{ TParametrosConexaoDB }

constructor TParametrosConexaoDB.Create(Conexao: iConexaoBD);
begin
  FConexao := Conexao;
end;

destructor TParametrosConexaoDB.Destroy;
begin
  //
  inherited;
end;

class function TParametrosConexaoDB.New(Conexao: iConexaoBD): iParametrosConexaoBD;
begin
  Result := Self.Create(Conexao);
end;

function TParametrosConexaoDB.Host(Value: string): iParametrosConexaoBD;
begin
  Result := Self;
  FHost  := Value;
end;

function TParametrosConexaoDB.Host: string;
begin
  Result := FHost;
end;

function TParametrosConexaoDB.Porta(Value: Integer): iParametrosConexaoBD;
begin
  Result := Self;
  FPorta := Value;
end;

function TParametrosConexaoDB.Porta: Integer;
begin
  Result := FPorta;
end;

function TParametrosConexaoDB.Usuario(Value: string): iParametrosConexaoBD;
begin
  Result   := Self;
  FUsuario := Value;
end;

function TParametrosConexaoDB.Usuario: string;
begin
  Result := FUsuario;
end;

function TParametrosConexaoDB.Senha(Value: string): iParametrosConexaoBD;
begin
  Result := Self;
  FSenha := Value;
end;

function TParametrosConexaoDB.Senha: string;
begin
  Result := FSenha;
end;

function TParametrosConexaoDB.BaseDeDados(Value: string): iParametrosConexaoBD;
begin
  Result       := Self;
  FBaseDeDados := Value;
end;

function TParametrosConexaoDB.BaseDeDados: string;
begin
  Result := FBaseDeDados;
end;

function TParametrosConexaoDB.Driver(Value: string): iParametrosConexaoBD;
begin
  Result  := Self;
  FDriver := Value;
end;

function TParametrosConexaoDB.Driver: string;
begin
  Result := FDriver;
end;

function TParametrosConexaoDB.&End: iConexaoBD;
begin
  Result := FConexao;
end;

function TParametrosConexaoDB.Gravar: Boolean;
begin
  //
end;

end.

