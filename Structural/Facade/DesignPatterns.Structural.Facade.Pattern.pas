unit DesignPatterns.Structural.Facade.Pattern;

interface

type
  iSystemA = interface
    ['{37C6991D-F4CC-4473-B34E-9D6814AA7913}']
    function DoSomethingA : string;
  end;

  iSystemB = interface
    ['{DC965680-CD1B-461F-86BD-3AFAE05B1EA3}']
    function DoSomethingB : string;
  end;

  iSystemC = interface
    ['{AC96912A-25DA-4B61-B78B-544C52A1E899}']
    function DoSomethingC : string;
  end;

  TSystemA = class(TInterfacedObject, iSystemA)
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iSystemA;
    function DoSomethingA : string;
  end;

  TSystemB = class(TInterfacedObject, iSystemB)
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iSystemB;
    function DoSomethingB : string;
  end;

  TSystemC = class(TInterfacedObject, iSystemC)
  public
    constructor Create;
    destructor Destroy; override;
    class function New : iSystemC;
    function DoSomethingC : string;
  end;

  iFacade = interface
    ['{19666966-0717-44AA-AE6D-EDC76B1A4260}']
    function DoCumpliment : string;
  end;

  TTypeOfCumpliment = (tocMorning, tocAfterNoon, tocNight);
  TTypeOfCumplimentHelper = record helper for TTypeOfCumpliment
    procedure SetValue(aValue : integer);
  end;
  TFacade = class(TInterfacedObject, iFacade)
  private
    FTypeOfCumpliment : TTypeOfCumpliment;
  public
    constructor Create(aValue : integer);
    destructor Destroy; override;
    class function New(aValue : integer) : iFacade;
    function DoCumpliment : string;
  end;

implementation

{ TSystemA }

constructor TSystemA.Create;
begin

end;

destructor TSystemA.Destroy;
begin

  inherited;
end;

function TSystemA.DoSomethingA : string;
begin
  Result := 'Good Morning!';
end;

class function TSystemA.New : iSystemA;
begin
  Result := Self.Create;
end;

{ TSystemB }

constructor TSystemB.Create;
begin

end;

destructor TSystemB.Destroy;
begin

  inherited;
end;

function TSystemB.DoSomethingB : string;
begin
  Result := 'Good Afternoon!';
end;

class function TSystemB.New : iSystemB;
begin
  Result := Self.Create;
end;

{ TSystemC }

constructor TSystemC.Create;
begin

end;

destructor TSystemC.Destroy;
begin

  inherited;
end;

function TSystemC.DoSomethingC : string;
begin
  Result := 'Good Night!';
end;

class function TSystemC.New : iSystemC;
begin
  Result := Self.Create;
end;

{ TFacade }

constructor TFacade.Create(aValue : integer);
begin
  FTypeOfCumpliment.SetValue(aValue);
end;

destructor TFacade.Destroy;
begin

  inherited;
end;

function TFacade.DoCumpliment : string;
begin
  case FTypeOfCumpliment of
    tocMorning : Result := TSystemA.New.DoSomethingA;
    tocAfterNoon : Result := TSystemB.New.DoSomethingB;
    tocNight : Result := TSystemC.New.DoSomethingC;
  end;
end;

class function TFacade.New(aValue : integer) : iFacade;
begin
  Result := Self.Create(aValue);
end;

{ TTypeOfCumplimentHelper }

procedure TTypeOfCumplimentHelper.SetValue(aValue: integer);
begin
  case aValue of
    0 : Self:= TTypeOfCumpliment.tocMorning;
    1 : Self:= TTypeOfCumpliment.tocAfterNoon;
    2 : Self:= TTypeOfCumpliment.tocNight;
  end;
end;

end.
