//
//  colortableviewlViewController.swift
//  colorapp fully by myself
//
//  Created by Shashank Yadav on 15/07/25.
//

import UIKit

class ColorTableViewController: UIViewController {
    
        
    var colorsInView: [NamedColor] = []

    //@IBOutlet weak var colorsTableView: UITableView!
    
    // enum for cells
    
    enum Cells {
        static let colorCell = "colordashboard"
    }
    
    //enum for segue
    
    enum Segue {
        static let toDetailViewController = "tocolordetail"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorToDisplay()
        // Do any additional setup after loading the view.
        //colorsTableView.dataSource = self
        //colorsTableView.delegate = self
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destViewController = segue.destination as! colordetailViewController
        destViewController.color = sender as? UIColor
    }
    
    
    func colorToDisplay(){
        for _ in 0...50{
            colorsInView.append(UIColor.colorNameDisplay())
        }
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


extension ColorTableViewController:UITableViewDelegate,UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colorsInView.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.colorCell, for: indexPath) as! colordashboard
       let colorInView = colorsInView[indexPath.row]

        cell.colordescriptionlabel.text = colorInView.name
        cell.colorview.backgroundColor = colorInView.color
        
       // cell.colorview.backgroundColor = colorInView[indexPath.row]
       // cell.colordescriptionlabel.text = colorInView.description
        
        return cell
    
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let colorDisplayAfterTapping = colorsInView[indexPath.row]
        performSegue(withIdentifier: Segue.toDetailViewController, sender: colorDisplayAfterTapping.color)
    }
}
    
    

