//
//  DetailViewController.swift
//  BasicLayoutApp4
//
//  Created by Raul Barranco on 7/10/22.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailLabel: UILabel!
    
    var text: String?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.detailLabel.text = self.text
        // Do any additional setup after loading the view.
    }
    

}
