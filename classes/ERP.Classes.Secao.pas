unit ERP.Classes.Secao;

interface

uses
  ERP.Classes.Interfaces,
  ERP.Connection.Interfaces;

type
  TSecao = class(TInterfacedObject, iSecao)
    private
      class var FInstance: iSecao;
      FConexaoBD: iConexaoBD;
      FUsuario  : iUsuario;
      constructor Create;
    public
      class function getInstance: iSecao;
      destructor Destroy; override;
      function ConexaoDB: iConexaoBD;
      function Usuario  : iUsuario;
  end;


implementation

uses
  ERP.Connection.ConexaoDBExpress,
  ERP.Classes.Usuario;

{ TSecao }

class function TSecao.getInstance: iSecao;
begin
  if not Assigned(FInstance) then
    FInstance := Self.Create;

  Result := FInstance;
end;

constructor TSecao.Create;
begin
  FConexaoBD := TConexaoDBExpress.New();
  FUsuario   := TUsuario.New();
end;

destructor TSecao.Destroy;
begin
  //
  inherited;
end;

function TSecao.Usuario: iUsuario;
begin
  Result := FUsuario;
end;

function TSecao.ConexaoDB: iConexaoBD;
begin
  Result := FConexaoBD;
end;

end.

