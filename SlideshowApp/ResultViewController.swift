//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 山本南 on 2018/12/11.
//  Copyright © 2018 min373. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var EnlargeView: UIImageView!
    //最初の画面からの画像を媒介するクラス
    var enlargeImage:UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //UIImageViewに画像をセット→AspectFitで拡大→画像を表示
        EnlargeView.image = enlargeImage
        EnlargeView.contentMode = UIViewContentMode.scaleAspectFit
        
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
