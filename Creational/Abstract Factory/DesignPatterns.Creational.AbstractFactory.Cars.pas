unit DesignPatterns.Creational.AbstractFactory.Cars;

interface

uses
  DesignPatterns.Creational.AbstractFactory.Interfaces;

type
  TVolkswagen = class(TInterfacedObject, iCar)
  private
  public
    constructor Create;
    destructor Destroy;
    class function New : iCar;
    function Name : string;
    function Color : string;
    function Year : string;
  end;

  TToyota = class(TInterfacedObject, iCar)
  private
  public
    constructor Create;
    destructor Destroy;
    class function New : iCar;
    function Name : string;
    function Color : string;
    function Year : string;
  end;

  TNissan = class(TInterfacedObject, iCar)
  private
  public
    constructor Create;
    destructor Destroy;
    class function New : iCar;
    function Name : string;
    function Color : string;
    function Year : string;
  end;

implementation

{ TNissan }

function TNissan.Color : string;
begin
  Result := 'White';
end;

constructor TNissan.Create;
begin

end;

destructor TNissan.Destroy;
begin

end;

function TNissan.Name : string;
begin
  Result := 'Nissan Kicks'
end;

class function TNissan.New : iCar;
begin
  Result := Self.Create;
end;

function TNissan.Year : string;
begin
  Result := '2023';
end;

{ TToyota }

function TToyota.Color : string;
begin
  Result := 'Black';
end;

constructor TToyota.Create;
begin

end;

destructor TToyota.Destroy;
begin

end;

function TToyota.Name : string;
begin
  Result := 'Corolla Cross';
end;

class function TToyota.New : iCar;
begin
  Result := Self.Create;
end;

function TToyota.Year : string;
begin
  Result := '2024';
end;

{ TVolkswagen }

function TVolkswagen.Color : string;
begin
  Result := 'Red';
end;

constructor TVolkswagen.Create;
begin

end;

destructor TVolkswagen.Destroy;
begin

end;

function TVolkswagen.Name : string;
begin
  Result := 'Gol'
end;

class function TVolkswagen.New : iCar;
begin
  Result:=Self.Create;
end;

function TVolkswagen.Year : string;
begin
  Result := '2025'
end;

end.
