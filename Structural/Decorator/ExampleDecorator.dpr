program ExampleDecorator;

uses
  Vcl.Forms,
  DesignPatterns.Structural.Decorator.View in 'DesignPatterns.Structural.Decorator.View.pas' {ViewDecorator},
  DesignPatterns.Structural.Decorator.Pattern in 'DesignPatterns.Structural.Decorator.Pattern.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewDecorator, ViewDecorator);
  Application.Run;
end.
