//
//  ViewController.swift


import UIKit

class ViewController: UIViewController
{
    
    @IBOutlet weak var calculatorWorkings: UILabel!
    
    @IBOutlet weak var calculatorResults: UILabel!
    
    var workings:String = ""

    
    override func viewDidLoad() {
        super.viewDidLoad()
                clearAll()
        
    }
    func clearAll()
    {
              
        workings = ""
        calculatorWorkings.text = " "
        calculatorResults.text = " "
    }
    
    
    
    @IBAction func borrarTodo(_ sender: Any) {
        clearAll()
     
    }
    
    @IBAction func borrarCaracter(_ sender: Any) {
        
        if(!workings.isEmpty)
                {
                    workings.removeLast()
                    calculatorWorkings.text = workings
                }
    }
    func addToWorkings(value: String)
        {
            workings = workings + value
            calculatorWorkings.text = workings
        }

    
  
    @IBAction func Porcentaje(_ sender: Any) {
        addToWorkings(value: "%")

        
    }
    @IBAction func Division(_ sender: Any) {
        addToWorkings(value: "/")
        
    }
    @IBAction func Multiplicacion(_ sender: Any) {
        addToWorkings(value: "*")
        
    }
    @IBAction func resta(_ sender: Any) {
        addToWorkings(value: "-")
        
    }
    
    @IBAction func Suma(_ sender: Any) {
        addToWorkings(value: "+")
        
    }
    @IBAction func Igual(_ sender: Any) {
        if(validInput())
                {
                    let checkedWorkingsForPercent = workings.replacingOccurrences(of: "%", with: "*0.01")
                    let expression = NSExpression(format: checkedWorkingsForPercent)
                    let result = expression.expressionValue(with: nil, context: nil) as! Double
                    let resultString = formatResult(result: result)
                    calculatorResults.text = resultString
                }
                else
                {
                    let alert = UIAlertController(
                        title: "Invalid Input",
                        message: "Calculator unable to do math based on input",
                        preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Okay", style: .default))
                    self.present(alert, animated: true, completion: nil)
                }
        
    }
    func validInput() ->Bool
        {
            var count = 0
            var funcCharIndexes = [Int]()
            
            for char in workings
            {
                if(specialCharacter(char: char))
                {
                    funcCharIndexes.append(count)
                }
                count += 1
            }
            
            var previous: Int = -1
            
            for index in funcCharIndexes
            {
                if(index == 0)
                {
                    return false
                }
                
                if(index == workings.count - 1)
                {
                    return false
                }
                
                if (previous != -1)
                {
                    if(index - previous == 1)
                    {
                        return false
                    }
                }
                previous = index
            }
            
            return true
        }
    func specialCharacter (char: Character) -> Bool
        {
            if(char == "*")
            {
                return true
            }
            if(char == "/")
            {
                return true
            }
            if(char == "+")
            {
                return true
            }
            return false
        }
    func formatResult(result: Double) -> String
        {
            if(result.truncatingRemainder(dividingBy: 1) == 0)
            {
                return String(format: "%.0f", result)
            }
            else
            {
                return String(format: "%.2f", result)
            }
        }
    @IBAction func Cero(_ sender: Any) {
        addToWorkings(value: "0")
    }
    
    @IBAction func Punto(_ sender: Any) {
        addToWorkings(value: ".")
    }
    
    @IBAction func uno(_ sender: Any) {
        addToWorkings(value: "1")
        
    }
    
    @IBAction func Dos(_ sender: Any) {
        addToWorkings(value: "2")
        
    }
    
    @IBAction func Tres(_ sender: Any) {
        addToWorkings(value: "3")
        
    }
    
    @IBAction func Cuatro(_ sender: Any) {
        addToWorkings(value: "4")
        
    }
    @IBAction func Cinco(_ sender: Any) {
        addToWorkings(value: "5")
        
    }
    @IBAction func Seis(_ sender: Any) {
        addToWorkings(value: "6")
        
    }
    @IBAction func Siete(_ sender: Any) {
        addToWorkings(value: "7")
        
    }
    @IBAction func Ocho(_ sender: Any) {
        addToWorkings(value: "8")
        
    }
    @IBAction func Nueve(_ sender: Any) {
        addToWorkings(value: "9")
        
    }
}
