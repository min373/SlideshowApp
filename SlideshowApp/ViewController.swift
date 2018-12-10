//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 山本南 on 2018/12/11.
//  Copyright © 2018 min373. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    
    @IBAction func TapImage(_ sender: Any) {
        // セグエを使用して画面を遷移
        performSegue(withIdentifier: "result", sender: nil)
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //バンドルした画像を読み込み
        let Image = UIImage(named: "tiger1.jpg" )
        
        //Imageに画像を表示
        ImageView.image = Image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

