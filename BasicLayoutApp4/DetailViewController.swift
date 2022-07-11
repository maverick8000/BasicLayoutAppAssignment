//
//  DetailViewController.swift
//  BasicLayoutApp4
//
//  Created by Raul Barranco on 7/10/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    @IBOutlet weak var detailImage: UIImageView!
    
    
    var text: String?
    //var image: UIImage?
    var dragonType: String?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.detailLabel.text = self.text
        detailImage.image = UIImage(named: self.dragonType ?? "whitedragon")
        // Do any additional setup after loading the view.
    }
    

}
