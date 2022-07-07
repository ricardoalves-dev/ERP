unit ERP.Model.Connection.FactoryConexao;

interface

uses
  ERP.Model.Interfaces,
  ERP.Model.Connection.ConexaoDBExpress;

type
  TModelFactoryConexaoBD = class(TInterfacedObject, iModelFactoryConexaoBD)
    public
      constructor Create;
      destructor Destroy; override;
      class function New: iModelFactoryConexaoBD;

      function DBExpress: iModelConexaoBD;
  end;

implementation



{ TModelFactoryConexaoBD }

constructor TModelFactoryConexaoBD.Create;
begin
  //
end;

destructor TModelFactoryConexaoBD.Destroy;
begin
  //
  inherited;
end;

class function TModelFactoryConexaoBD.New: iModelFactoryConexaoBD;
begin
  Result := Self.Create;
end;

function TModelFactoryConexaoBD.DBExpress: iModelConexaoBD;
begin
  Result := TConexaoDBExpress.New();
end;

end.

