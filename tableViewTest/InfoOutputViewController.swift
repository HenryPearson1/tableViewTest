//
//  InfoOutputViewController.swift
//  tableViewTest
//
//  Created by Henry Pearson on 03/02/2018.
//  Copyright © 2018 Henry Pearson. All rights reserved.
//

import UIKit

class InfoOutputViewController: UIViewController {
    
    // outputs for the flag and name
    @IBOutlet weak var outputName: UILabel!
    @IBOutlet weak var outputImage: UIImageView!
    var index: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        outputImage.image = UIImage(named: countries[index][1])
        outputName.text = countries[index][0]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
