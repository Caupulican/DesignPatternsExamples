unit DesignPatterns.Structutal.Composite.Pattern;

interface

uses
  System.Generics.Collections;

type
  iComponent = interface
    ['{B02378F1-A246-473F-B330-392C5A0C5E1E}']
    procedure Add(aComponent : iComponent);
    procedure Remove(aComponent : iComponent);
    function Find(aPosition : iComponent) : iComponent;
    function Name(aValue : string) : iComponent; overload;
    function Name : string; overload;
    procedure DoWork;
  end;

  TLeaf = class(TInterfacedObject, iComponent)
    private
      FName : string;
    public
      constructor Create(aName : string);
      destructor Destroy; override;
      class function New(aName : string) : iComponent;
      procedure Add(aComponent : iComponent);
      procedure Remove(aComponent : iComponent);
      function Find(aPosition : iComponent) : iComponent;
      function Name(aValue : string) : iComponent; overload;
      function Name : string; overload;
      procedure DoWork;
  end;

  TComposite = class(TInterfacedObject, iComponent)
    private
      FName : string;
      FChildren : TList<iComponent>;
    public
      constructor Create;
      destructor Destroy; override;
      procedure Add(aComponent : iComponent);
      procedure Remove(aComponent : iComponent);
      function Find(aPosition : iComponent) : string;
      function Name(aValue : string) : iComponent; overload;
      function Name : string; overload;
      procedure DoWork;
  end;

implementation

uses
  System.SysUtils;

{ TLeaf }

procedure TLeaf.Add(aComponent: iComponent);
begin
  raise Exception.Create('Cannot Add a Component!');
end;

constructor TLeaf.Create(aName: string);
begin
  FName := aName;
end;

destructor TLeaf.Destroy;
begin

  inherited;
end;

procedure TLeaf.DoWork;
begin
  //Do Something
end;

function TLeaf.Find(aPosition : iComponent) : iComponent;
begin
  Result:=nil;
  if aPosition.Name=FName then
    Result:=Self;
end;

function TLeaf.Name(aValue: string): iComponent;
begin
  Result:=Self;
  FName := aValue;
end;

function TLeaf.Name: string;
begin
  Result:=FName;
end;

class function TLeaf.New(aName: string): iComponent;
begin
  Result:=Self.Create(aName);
end;

procedure TLeaf.Remove(aComponent: iComponent);
begin
  raise Exception.Create('Cannot Remove Component!');
end;

{ TComposite }

procedure TComposite.Add(aComponent: iComponent);
begin
  FChildren.Add(aComponent);
end;

constructor TComposite.Create;
begin
  FChildren := TList<iComponent>.Create;
  FChildren.TrimExcess;
end;

destructor TComposite.Destroy;
begin
  FChildren.Free;
  inherited;
end;

procedure TComposite.DoWork;
var
  I: Integer;
begin
  for I := 0 to Pred(FChildren.Count) do
    FChildren.Items[i].DoWork;
end;

function TComposite.Find(aPosition: iComponent): string;
var
  vChild : iComponent;
  I: Integer;
begin
  for I := 0 to Pred(FChildren.Count) do
  begin
    vChild:= FChildren.Items[i].Find(aPosition);
    if vChild<>nil then
      Result:=exit(vChild.Name);
  end;
end;

function TComposite.Name(aValue: string): iComponent;
begin
  Result:=Self;
  FName := aValue;
end;

function TComposite.Name: string;
begin
  Result:=FName;
end;

procedure TComposite.Remove(aComponent: iComponent);
begin
  FChildren.Remove(aComponent);
end;

end.
