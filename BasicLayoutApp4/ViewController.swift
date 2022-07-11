//
//  ViewController.swift
//  BasicLayoutApp4
//
//  Created by Raul Barranco on 7/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.backgroundColor = .systemPink
        self.tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "XIBTableViewCell", bundle: nil), forCellReuseIdentifier: "XIBTableViewCell")
        
    }
    
    @IBAction func navigationControllerButtonPressed(_ sender: UIButton) {
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        guard let vc = storyBoard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else {return}
        
        vc.text = "Navigation Controller Presentation"
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    


}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section: \(section)"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "XIBTableViewCell", for: indexPath) as? XIBTableViewCell else {return UITableViewCell()}

        
        if indexPath.section + indexPath.row % 2 == 0
        {
            cell.configure(imageStr: "reddragon", indexPath: indexPath)
        }
        else
        {
            cell.configure(imageStr: "greendragon", indexPath: indexPath)
            
        }
                
        return cell
    }
    
    
    
    
    
    
}

