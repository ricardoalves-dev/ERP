unit ERP.Classes.Usuario;

interface

uses
  ERP.Classes.Interfaces;

type
  TUsuario = class(TInterfacedObject, iUsuario)
    private
      FNome : string;
      FSenha: string;
      constructor Create;
    public
      class function New(): iUsuario;
      destructor Destroy; override;
      function Nome(Value: string): iUsuario; overload;
      function Nome: string; overload;
      function Senha(Value: string): iUsuario; overload;
      function Senha: string; overload;
      function Autenticar: Boolean;

  end;

implementation

{ TUsuario }

class function TUsuario.New: iUsuario;
begin
  Result := Self.Create;
end;

constructor TUsuario.Create;
begin
  FNome  := '';
  FSenha := '';
end;

destructor TUsuario.Destroy;
begin
  //
  inherited;
end;

function TUsuario.Nome(Value: string): iUsuario;
begin
  FNome := Value;
end;

function TUsuario.Nome: string;
begin
  Result := FNome;
end;

function TUsuario.Senha(Value: string): iUsuario;
begin
  FSenha := Value;
end;

function TUsuario.Senha: string;
begin
  Result := FSenha;
end;

function TUsuario.Autenticar: Boolean;
begin
  //
end;

end.

