import Debug "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";


actor SanBank {
  stable var amount: Float = 500;


  stable  var startTime = Time.now();

  public query func balance(): async Float {
    return amount;
  };

  public func add (addAmount: Float){
    amount += addAmount;
  };

  public func sub (subAmount: Float){
   let temp: Float =  amount - subAmount;

   if (temp >= 0){
     amount -= subAmount;
   } else {
    Debug.print("Amount too large check your account balance")
   }
  };

  public func compoundInterest(){
    let currentTime = Time.now();
    let times = - startTime + currentTime;
    let time = times / 1000000000;
    amount :=  amount * (1.02 ** Float.fromInt(time));

    startTime := currentTime;
  };

	Debug.print("kkkk");

  
};
