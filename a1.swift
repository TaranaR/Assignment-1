enum oddEvenError:Error{
  case negative
  var msg:String{
    switch self{
      case .negative: return "Error: Number cannot be negative."
    }
  }
}
func checkEvenOdd(num:Int) throws{
  switch num{
    case ..<0:
      throw oddEvenError.negative
    case 0...:
      if(num%2==0){
        print("Number is Even.")
      }else{
        print("Number is Odd.")
      }
    default:
      print("Someting went wrong")
  }
}

do{
  print("Enter number for Odd or Even")
  var no=Int(readLine() ?? "0") ?? 0
  try checkEvenOdd(num:no)
}catch{
  if let error=error as? oddEvenError{
    print(error.msg)
  }
}