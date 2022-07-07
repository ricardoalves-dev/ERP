program ERP;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  ERP.Model.Connection.Interfaces in 'model\connection\ERP.Model.Connection.Interfaces.pas',
  ERP.Model.Connection.Conexao in 'model\connection\ERP.Model.Connection.Conexao.pas',
  ERP.Model.Connection.ConexaoDBExpress in 'model\connection\ERP.Model.Connection.ConexaoDBExpress.pas',
  ERP.Model.Connection.ParametrosConexaoDB in 'model\connection\ERP.Model.Connection.ParametrosConexaoDB.pas',
  ERP.View.Login in 'view\ERP.View.Login.pas' {Form2};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  //Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.

