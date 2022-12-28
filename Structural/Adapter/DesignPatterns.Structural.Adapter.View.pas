unit DesignPatterns.Structural.Adapter.View;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, DesignPatterns.Structural.Adapter.Pattern;

type
  TAdapterView = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    BtnRequest: TButton;
    Edit1: TEdit;
    procedure BtnRequestClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AdapterView: TAdapterView;

implementation

{$R *.dfm}

procedure TAdapterView.BtnRequestClick(Sender: TObject);
begin
  Label1.Caption:= TAdapter.New(TAdaptee.Create).DoRequest(Edit1.Text);
end;

end.
