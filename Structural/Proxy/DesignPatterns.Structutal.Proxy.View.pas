unit DesignPatterns.Structutal.Proxy.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DesignPatterns.Structutal.Proxy.Pattern;

type
  TProxyView = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ProxyView: TProxyView;

implementation

{$R *.dfm}

procedure TProxyView.Button1Click(Sender: TObject);
begin
  if TPaymentProxy.New(TCreditCard.New(100.00)).Pay(StrToFloat(FormatFloat('#.##',StrToFloat(Edit1.Text)))) then
    Label1.Caption := 'The amount has been paid!'
  else
    Label1.Caption := 'You are not able to pay that much!';
end;

end.
