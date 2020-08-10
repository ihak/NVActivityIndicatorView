//
//  ViewController2.swift
//  Example
//
//  Created by Hassan Ahmed Khan on 10/08/2020.
//

import UIKit
import NVActivityIndicatorView

class ViewController2: UIViewController {
    @IBOutlet weak var indicatorView: NVActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        indicatorView.startAnimating()
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
