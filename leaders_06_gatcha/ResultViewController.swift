//
//  ResultViewController.swift
//  leaders_06_gatcha
//
//  Created by Yoshinori Shibahara on 2020/05/09.
//  Copyright © 2020 Yoshinori Shibahara. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet var haikeiImageView: UIImageView!
    @IBOutlet var monsterImageView:UIImageView!
    var monsterArray: [UIImage]!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let number = Int.random(in: 0..<10)
        
        monsterArray = [UIImage(named: "monster001.png")!,
        UIImage(named: "monster002.png")!,
        UIImage(named: "monster003.png")!,
        UIImage(named: "monster004.png")!,
        UIImage(named: "monster005.png")!,
        UIImage(named: "monster006.png")!,
        UIImage(named: "monster007.png")!,
        UIImage(named: "monster008.png")!,
        UIImage(named: "monster008.png")!,
        UIImage(named: "monster009.png")!,]
        
        monsterImageView.image = monsterArray[number]
        
        if number == 9 {
            haikeiImageView.image = UIImage(named: "bg_gold.png")
        } else if number > 6 {
            haikeiImageView.image = UIImage(named: "bg_red.png")
        } else {
            haikeiImageView.image = UIImage(named: "bg_blue.png")
        }
    
    }
    
    @IBAction func back() {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        let animation = CABasicAnimation(keyPath: "transform")
        animation.fromValue = NSNumber(value: 0)
        animation.toValue = NSNumber(value: 2 * Double.pi)
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        animation.duration = 5
        animation.repeatCount = Float.infinity
        haikeiImageView.layer.add(animation, forKey: nil)
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
