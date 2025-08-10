//
//  colordetailViewController.swift
//  colorapp fully by myself
//
//  Created by Shashank Yadav on 15/07/25.
//

import UIKit

class colordetailViewController: UIViewController {
    
    var color:UIColor?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=color ?? .black
        

        // Do any additional setup after loading the view.
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
