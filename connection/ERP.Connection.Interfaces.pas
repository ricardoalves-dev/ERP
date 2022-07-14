unit ERP.Connection.Interfaces;

interface

uses
  Data.DB;

type

  iParametrosConexaoBD = interface;

  iConexaoBD = interface
    function Conectar: Boolean;
    function Conexao: TCustomConnection;
    function Parametros: iParametrosConexaoBD;
  //  function getInstance: iConexaoBD;
  end;

  iParametrosConexaoBD = interface
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

end.

