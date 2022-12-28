unit DesignPatterns.Structural.Decorator.Pattern;

interface

type
  iAction = interface
    ['{9EEB949D-409A-4F19-B783-9ABE92664EC6}']
    function DoAction : string;
  end;

  TAction = class
    class function DoWalk : string;
  end;

  TDecoratorA = class(TInterfacedObject, iAction)
  private
    FAction : iAction;
  public
    constructor Create(aValue : iAction);
    destructor Destroy; override;
    class function New(aValue : iAction) : iAction;
    function DoAction : string;
  end;

  TDecoratorB = class(TInterfacedObject, iAction)
  private
    FAction : iAction;
  public
    constructor Create(aValue : iAction);
    destructor Destroy; override;
    class function New(aValue : iAction) : iAction;
    function DoAction : string;
  end;

  TDecoratorC = class(TInterfacedObject, iAction)
  private
    FAction : iAction;
  public
    constructor Create(aValue : iAction);
    destructor Destroy; override;
    class function New(aValue : iAction) : iAction;
    function DoAction : string;
  end;

  TDecoratorD = class(TInterfacedObject, iAction)
  private
    FAction : iAction;
  public
    constructor Create(aValue : iAction);
    destructor Destroy; override;
    class function New(aValue : iAction) : iAction;
    function DoAction : string;
  end;

implementation

{ TDecoratorA }

constructor TDecoratorA.Create(aValue : iAction);
begin
  FAction := aValue;
end;

destructor TDecoratorA.Destroy;
begin

  inherited;
end;

function TDecoratorA.DoAction : string;
begin
  if Assigned(FAction) then
    Result := FAction.DoAction + 'and I saw a bird flying '
  else
    Result := 'and I saw a bird flying ';
end;

class function TDecoratorA.New(aValue : iAction) : iAction;
begin
  Result := Self.Create(aValue);
end;

{ TDecoratorB }

constructor TDecoratorB.Create(aValue : iAction);
begin
  FAction := aValue;
end;

destructor TDecoratorB.Destroy;
begin

  inherited;
end;

function TDecoratorB.DoAction : string;
begin
  if Assigned(FAction) then
    Result := FAction.DoAction + 'and the sky was blue '
  else
    Result := 'and the sky was blue ';
end;

class function TDecoratorB.New(aValue : iAction) : iAction;
begin
  Result := Self.Create(aValue);
end;

{ TDecoratorC }

constructor TDecoratorC.Create(aValue : iAction);
begin
  FAction := aValue;
end;

destructor TDecoratorC.Destroy;
begin

  inherited;
end;

function TDecoratorC.DoAction : string;
begin
  if Assigned(FAction) then
    Result := FAction.DoAction + 'and the wind was singing '
  else
    Result := 'and the wind was singing ';
end;

class function TDecoratorC.New(aValue : iAction) : iAction;
begin
  Result := Self.Create(aValue);
end;

{ TDecoratorD }

constructor TDecoratorD.Create(aValue : iAction);
begin
  FAction := aValue;
end;

destructor TDecoratorD.Destroy;
begin

  inherited;
end;

function TDecoratorD.DoAction : string;
begin
  if Assigned(FAction) then
    Result := FAction.DoAction + 'and i felt happy '
  else
    Result := 'and i felt happy ';
end;

class function TDecoratorD.New(aValue : iAction) : iAction;
begin
  Result := Self.Create(aValue);
end;

{ TAction }

class function TAction.DoWalk : string;
begin
  Result := 'I started to walk ' +
    TDecoratorA
    .New(TDecoratorB
    .New(TDecoratorC
    .New(TDecoratorD.New(nil)))).DoAction;
end;

end.
