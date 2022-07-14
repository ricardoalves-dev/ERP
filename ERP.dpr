program ERP;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ERP.Connection.Interfaces in 'connection\ERP.Connection.Interfaces.pas',
  ERP.Connection.Conexao in 'connection\ERP.Connection.Conexao.pas',
  ERP.Connection.ConexaoDBExpress in 'connection\ERP.Connection.ConexaoDBExpress.pas',
  ERP.Connection.ParametrosConexaoDB in 'connection\ERP.Connection.ParametrosConexaoDB.pas',
  ERP.View.Login in 'view\ERP.View.Login.pas' {Form2},
  ERP.Interfaces in 'ERP.Interfaces.pas',
  ERP.View.Configuracoes in 'view\ERP.View.Configuracoes.pas' {FConfiguracoes},
  ERP.View.Splash in 'view\ERP.View.Splash.pas' {Form3},
  ERP.Classes.Interfaces in 'classes\ERP.Classes.Interfaces.pas',
  ERP.Classes.Secao in 'classes\ERP.Classes.Secao.pas',
  ERP.Classes.Usuario in 'classes\ERP.Classes.Usuario.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  //Application.CreateForm(TForm3, Form3);
  Application.Run;
end.

