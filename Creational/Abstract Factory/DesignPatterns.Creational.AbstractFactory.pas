unit DesignPatterns.Creational.AbstractFactory;

interface

uses
  DesignPatterns.Creational.AbstractFactory.Interfaces,
  DesignPatterns.Creational.AbstractFactory.Cars;

type
  TCarFactory = class
  public
    class function CreateVolkswagen : iCar;
    class function CreateToyota : iCar;
    class function CreateNissan : iCar;
  end;

implementation

{ TCarFactory }

class function TCarFactory.CreateNissan : iCar;
begin
  Result := TNissan.New;
end;

class function TCarFactory.CreateToyota : iCar;
begin
  Result := TToyota.New;
end;

class function TCarFactory.CreateVolkswagen : iCar;
begin
  Result := TVolkswagen.New;
end;

end.
