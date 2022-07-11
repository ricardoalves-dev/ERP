unit ERP.View.Configuracoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls;

type
  TForm3 = class(TForm)
    pnlClient: TPanel;
    pnlTitulo: TPanel;
    pnlBotao: TPanel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnlCliente: TPanel;
    btnSair: TSpeedButton;
    btnBuscar: TButtonedEdit;
    imgList1: TImageList;
    pnlBotaoSalvar: TPanel;
    pnlBotaoTestar: TPanel;
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.btnSairClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  ActiveControl := pnlClient;
end;

end.

