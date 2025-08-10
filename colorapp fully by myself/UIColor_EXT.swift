//
//  UIColor_EXT.swift
//  colorapp fully by myself
//
//  Created by Shashank Yadav on 20/07/25.
//

import UIKit

struct NamedColor {
    let name:String
    let color:UIColor
    
}

extension UIColor {
    static func colorNameDisplay()->NamedColor{
        /*   let randomColor=UIColor(red: CGFloat.random(in: 0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in: 0...1), alpha: 1)
         let name=["Sunset Orange", "Ocean Blue", "Forest Green", "Lavender", "Midnight Black", "Coral Pink"]
         let colorName = name.randomElement() ?? "Invalid color"
         return NamedColor(name: colorName, color: randomColor)
         }
         */
        
        let colorsInRandom = [
            NamedColor(name: "Sunset Orange", color: UIColor(red: 1.0, green: 0.4, blue: 0.3, alpha: 1)),
            NamedColor(name: "Ocean Blue", color: UIColor(red: 0.0, green: 0.5, blue: 1.0, alpha: 1)),
            NamedColor(name: "Forest Green", color: UIColor(red: 0.13, green: 0.55, blue: 0.13, alpha: 1)),
            NamedColor(name: "Lavender", color: UIColor(red: 0.9, green: 0.9, blue: 0.98, alpha: 1)),
            NamedColor(name: "Midnight Black", color: UIColor(red: 0, green: 0, blue: 0, alpha: 1)),
            NamedColor(name: "Coral Pink", color: UIColor(red: 1.0, green: 0.5, blue: 0.5, alpha: 1))
            
        ]
        return colorsInRandom.randomElement()!
    }
}
    

/*extension UIColor{
    
   static  func colorGoInView()->UIColor {
       let randomColor = UIColor(red:CGFloat.random(in:0...1), green: CGFloat.random(in: 0...1), blue: CGFloat.random(in:0...1), alpha: 1)
        return randomColor
    }
    
}
//let UIColorObject = UIColor()
 */


