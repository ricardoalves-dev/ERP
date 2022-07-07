unit ERP.Model.Connection.Interfaces;

interface

uses
  Data.DB;

type

  iModelParametrosConexaoBD = interface;

  iModelConexaoBD = interface
    function Conectar: Boolean;
    function Conexao: TCustomConnection;
    function Parametros: iModelParametrosConexaoBD;
  end;

  iModelParametrosConexaoBD = interface
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

end.

