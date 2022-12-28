unit DesignPatterns.Structutal.Proxy.Pattern;

interface

type
  iPaymentForms = interface
    ['{759CC016-C7DB-44C1-9E88-E00FCD45B533}']
    function Charge(aAmount : Double) : Boolean;
  end;

  iPayment = interface
    ['{FF565218-7A30-4E50-9DC8-9D8423B768E6}']
    function Pay(aAmount : Double) : Boolean;
  end;

  TCreditCard = class(TInterfacedObject,iPaymentForms)
    private
      FBalance : Double;
    public
      constructor Create(aBalance : Double);
      destructor Destroy; override;
      class function New(aBalance : Double) : iPaymentForms;
      function Charge(aAmount : Double) : Boolean;
  end;

  TPaymentProxy = class(TInterfacedObject,iPayment)
    private
      FCreditCard : iPaymentForms;
    public
      constructor Create(aPaymentForm : iPaymentForms);
      destructor Destroy; override;
      class function New(aPaymentForm : iPaymentForms) : iPayment;
      function Pay(aAmount : Double) : Boolean;
  end;

implementation

{ TCreditCard }

function TCreditCard.Charge(aAmount: Double): Boolean;
begin
  Result:=(FBalance - aAmount)>0;
end;

constructor TCreditCard.Create(aBalance : Double);
begin
  FBalance := aBalance;
end;

destructor TCreditCard.Destroy;
begin

  inherited;
end;

class function TCreditCard.New(aBalance : Double) : iPaymentForms;
begin
  Result:=Self.Create(aBalance);
end;

{ TPaymentProxy }

function TPaymentProxy.Pay(aAmount: Double): Boolean;
begin
  Result:=FCreditCard.Charge(aAmount);
end;

constructor TPaymentProxy.Create(aPaymentForm : iPaymentForms);
begin
  FCreditCard := aPaymentForm;
end;

destructor TPaymentProxy.Destroy;
begin

  inherited;
end;

class function TPaymentProxy.New(aPaymentForm : iPaymentForms) : iPayment;
begin
  Result:=Self.Create(aPaymentForm);
end;

end.
