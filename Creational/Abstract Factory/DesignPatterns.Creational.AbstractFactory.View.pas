unit DesignPatterns.Creational.AbstractFactory.View;

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
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  DesignPatterns.Creational.AbstractFactory.Interfaces,
  DesignPatterns.Creational.AbstractFactory;

type
  TViewAbstractFactory = class(TForm)
    Panel1 : TPanel;
    RadioGroupCarModels : TRadioGroup;
    GroupBox1 : TGroupBox;
    Edit1 : TEdit;
    Edit2 : TEdit;
    Edit3 : TEdit;
    Label1 : TLabel;
    Label2 : TLabel;
    Label3 : TLabel;
    procedure RadioGroupCarModelsClick(Sender : TObject);
  private
    { Private declarations }
    FCar : iCar;
    procedure ShowCarInfo;
  const
    VOLKSWAGEN = 0;
    TOYOTA = 1;
    NISSAN = 2;
  public
    { Public declarations }
  end;

var
  ViewAbstractFactory : TViewAbstractFactory;

implementation

{$R *.dfm}


procedure TViewAbstractFactory.RadioGroupCarModelsClick(Sender : TObject);
begin
  case RadioGroupCarModels.ItemIndex of
    VOLKSWAGEN : FCar := TCarFactory.CreateVolkswagen;
    TOYOTA :  FCar := TCarFactory.CreateToyota;
    NISSAN :  FCar := TCarFactory.CreateNissan;
  end;
  ShowCarInfo;
end;

procedure TViewAbstractFactory.ShowCarInfo;
begin
  Edit1.Text := FCar.Name;
  Edit2.Text := FCar.Color;
  Edit3.Text := FCar.Year;
end;

end.
