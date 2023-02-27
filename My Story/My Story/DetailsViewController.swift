//
//  DetailsViewController.swift
//  My Story
//
//  Created by Aaron Jacob on 2/25/23.
//

import UIKit

class DetailsViewController: UIViewController {

    var contextItem: ContextItem?
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var detailsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = contextItem?.navTitle
        imageView.image = contextItem?.image
        detailsLabel.text = contextItem?.description
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
