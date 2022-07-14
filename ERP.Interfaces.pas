unit ERP.Interfaces;

interface


uses
  ERP.Connection.Interfaces;

type
  iUsuario = interface
    function Nome(Value: string): iUsuario; overload;
    function Nome: string; overload;
    function Senha(Value: string): iUsuario; overload;
    function Senha: string; overload;
    function Conectado: Boolean;
  end;

  iSecao = interface
    function ConexaoDB: iConexaoBD;
    function Usuario: iUsuario;
  end;

implementation

end.

