//
//  FavoriteViewController.swift
//  ahua_TabRemote
//
//  Created by Amy Hua on 2/29/20.
//  Copyright © 2020 DePaul University. All rights reserved.
//

import UIKit

class FavoriteViewController: UIViewController {

    @IBOutlet weak var count: UILabel!
    var time = 0
    var timer = Timer()
    
    @IBAction func start(_ sender: UIButton) {
        if time != 0 {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(FavoriteViewController.action), userInfo: nil, repeats: true)
        }
    }
    
    @IBAction func stop(_ sender: UIButton) {
        timer.invalidate()
    }
    

    @IBAction func sec30(_ sender: UIButton) {
        time = 30
        count.text = "30"
    }
    
    
    @IBAction func sec60(_ sender: UIButton) {
        time = 60
        count.text = "60"
    }
    
    @IBAction func min2(_ sender: UIButton) {
        time = 120
        count.text = "120"
    }
    
    @IBAction func restart(_ sender: UIButton) {
        time = 0
        count.text = "0"
    }
    
    
    @objc func action(){
        time -= 1
        count.text = String(time)
        if (time == 0){
            timer.invalidate()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
