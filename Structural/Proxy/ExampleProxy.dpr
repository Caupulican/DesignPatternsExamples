program ExampleProxy;

uses
  Vcl.Forms,
  DesignPatterns.Structutal.Proxy.View in 'DesignPatterns.Structutal.Proxy.View.pas' {ProxyView},
  DesignPatterns.Structutal.Proxy.Pattern in 'DesignPatterns.Structutal.Proxy.Pattern.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TProxyView, ProxyView);
  Application.Run;
end.
