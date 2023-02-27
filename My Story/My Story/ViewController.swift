//
//  ViewController.swift
//  My Story
//
//  Created by Aaron Jacob on 2/24/23.
//

import UIKit

class ViewController: UIViewController {
    let locationContextItem = ContextItem(navTitle: "My Location", image: UIImage(named: "harlingen")!, description: "I'm from Harlingen, a small city in the Rio Grande Valley in south Texas about a 30-minute drive away from Brownsville, a 45-minute drive away from McAllen, and a 1-hour drive away from South Padre Island. My town is only a 20-minute drive away from the U.S.-Mexico border. If you want real Tex-Mex food, you come to the RGV. There's a taquería every block or two.")
    let collegeContextItem = ContextItem(navTitle: "My College", image: UIImage(named: "utdallas")!, description: "I study at The University of Texas at Dallas in Richardson, TX, an inner suburb of Dallas, as a freshman majoring in computer science. We're known as the Comets. Our mascot is Temoc, a comet in a human-like form (search him up: he either looks like the stuff in your nightmares or the cutest college mascot).")
    let smContextItem = ContextItem(navTitle: "My Handles", image: UIImage(named: "winglet")!, description: "I have a Linktree with all my social media links and other things about me on there: linktr.ee/avgeekydev. I promise you'll be in for a treat.")
    
    @IBAction func didTapButton(_ sender: UIButton) {
        performSegue(withIdentifier: "detailsSegue", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsSegue",
            let tappedButton = sender as? UIButton,
            let detailsViewController = segue.destination as? DetailsViewController {
            if tappedButton.tag == 0 {
                detailsViewController.contextItem = locationContextItem;
            } else if tappedButton.tag == 1 {
                detailsViewController.contextItem = collegeContextItem;
            } else if tappedButton.tag == 2 {
                detailsViewController.contextItem = smContextItem;
            } else {
                print("No context item was tapped. Please check your selection.")
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

