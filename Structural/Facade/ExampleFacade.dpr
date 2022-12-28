program ExampleFacade;

uses
  Vcl.Forms,
  DesignPatterns.Structural.Facade.View in 'DesignPatterns.Structural.Facade.View.pas' {ViewFacade},
  DesignPatterns.Structural.Facade.Pattern in 'DesignPatterns.Structural.Facade.Pattern.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewFacade, ViewFacade);
  Application.Run;
end.
