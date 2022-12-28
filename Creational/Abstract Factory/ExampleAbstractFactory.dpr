program ExampleAbstractFactory;

uses
  Vcl.Forms,
  DesignPatterns.Creational.AbstractFactory.View in 'DesignPatterns.Creational.AbstractFactory.View.pas' {ViewAbstractFactory},
  DesignPatterns.Creational.AbstractFactory.Interfaces in 'DesignPatterns.Creational.AbstractFactory.Interfaces.pas',
  DesignPatterns.Creational.AbstractFactory in 'DesignPatterns.Creational.AbstractFactory.pas',
  DesignPatterns.Creational.AbstractFactory.Cars in 'DesignPatterns.Creational.AbstractFactory.Cars.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  ReportMemoryLeaksOnShutdown := True;
  Application.CreateForm(TViewAbstractFactory, ViewAbstractFactory);
  Application.Run;
end.
