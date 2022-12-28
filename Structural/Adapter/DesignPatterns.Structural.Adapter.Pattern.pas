unit DesignPatterns.Structural.Adapter.Pattern;

interface

uses
  System.SysUtils;

type
  iTarget = interface
    ['{F6E3E67E-0DB6-4F7A-86C6-E53095E28AD7}']
    function DoRequest(aWord : string) : string;
  end;

  TAdaptee = class
    function SpecificRequest(aWord1,aWord2 : string) : string;
  end;

  TAdapter = class(TInterfacedObject,iTarget)
    private
      FAdaptee : TAdaptee;
    public
      constructor Create(Adaptee : TAdaptee);
      destructor Destroy; override;
      class function New(Adaptee : TAdaptee) : iTarget;
      function DoRequest(aWord : string) : string;
  end;


implementation

{ TAdapter }

constructor TAdapter.Create(Adaptee: TAdaptee);
begin
  FAdaptee := Adaptee;
end;

destructor TAdapter.Destroy;
begin
  FAdaptee.Free;
  inherited;
end;

function TAdapter.DoRequest(aWord: string): string;
begin
  Result:= FAdaptee.SpecificRequest(aWord,' is what you said!');
end;

class function TAdapter.New(Adaptee: TAdaptee): iTarget;
begin
  Result:=Self.Create(Adaptee);
end;

{ TAdaptee }

function TAdaptee.SpecificRequest(aWord1, aWord2: string): string;
begin
  Result:=QuotedStr(aWord1)+aWord2;
end;

end.
