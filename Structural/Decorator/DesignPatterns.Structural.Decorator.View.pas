unit DesignPatterns.Structural.Decorator.View;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  DesignPatterns.Structural.Decorator.Pattern;

type
  TViewDecorator = class(TForm)
    Panel1 : TPanel;
    Button1 : TButton;
    Label1 : TLabel;
    procedure Button1Click(Sender : TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewDecorator : TViewDecorator;

implementation

{$R *.dfm}


procedure TViewDecorator.Button1Click(Sender : TObject);
begin
  Label1.Caption := TAction.DoWalk;
end;

end.
