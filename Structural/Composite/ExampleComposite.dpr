program ExampleComposite;

uses
  Vcl.Forms,
  DesignPatterns.Structutal.Composite.View in 'DesignPatterns.Structutal.Composite.View.pas' {Form1},
  DesignPatterns.Structutal.Composite.Pattern in 'DesignPatterns.Structutal.Composite.Pattern.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
