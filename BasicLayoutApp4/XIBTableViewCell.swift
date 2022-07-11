//
//  XIBTableViewCell.swift
//  BasicLayoutApp4
//
//  Created by Raul Barranco on 7/10/22.
//

import UIKit

class XIBTableViewCell: UITableViewCell {
    
    var indexPathrow: Int?

    @IBOutlet weak var myImageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var myDetailButton: UIButton!
    
    
    func configure(imageStr: String, indexPath: IndexPath) {
        
        self.myImageView.image = UIImage(named: imageStr)
        self.myLabel.text = "IndexPath: \(indexPath)"
        //self.indexPathrow
                
    }
    
    @IBAction func myDetailButtonPressed(_ sender: Any) {
        
        let storyBoard2 = UIStoryboard(name: "Main", bundle: nil)
        guard let vc2 = storyBoard2.instantiateViewController(withIdentifier: "DetailNonSegueViewController") as? DetailViewController else {return}
        
        vc2.text = "Navigation Controller Presentation 2"
        
        //self.superview?.naviga        
                
    }
    
    
    
}
