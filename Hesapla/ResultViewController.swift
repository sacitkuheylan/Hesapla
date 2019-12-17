//
//  ResultViewController.swift
//  Hesapla
//
//  Created by Sacit Küheylan on 17.12.2019.
//  Copyright © 2019 Sacit Küheylan. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    var result : String = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = result
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
