program ExampleAdapter;

uses
  Vcl.Forms,
  DesignPatterns.Structural.Adapter.View in 'DesignPatterns.Structural.Adapter.View.pas' {AdapterView},
  DesignPatterns.Structural.Adapter.Pattern in 'DesignPatterns.Structural.Adapter.Pattern.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TAdapterView, AdapterView);
  Application.Run;
end.
