unit DesignPatterns.Structural.Facade.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, DesignPatterns.Structural.Facade.Pattern;

type
  TViewFacade = class(TForm)
    Panel1: TPanel;
    Button1: TButton;
    rgCumpliment: TRadioGroup;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewFacade: TViewFacade;

implementation

{$R *.dfm}

procedure TViewFacade.Button1Click(Sender: TObject);
begin
  Label1.Caption:=TFacade.New(rgCumpliment.ItemIndex).DoCumpliment;
end;

end.
