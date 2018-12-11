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
    //タイマーの設定
    var timer:Timer! = nil
    // タイマー用の時間のための変数
    var timer_sec: Float = 0
    /// 表示している画像の番号
    var dispImageNo = 0
    // 画像の名前の配列
    let imageNameArray = [
        "tiger1.jpg",
        "BT42.jpg",
        "T34.jpg",
        ]
    
    @IBAction func TapImage(_ sender: Any) {
    // セグエを使用して画面を遷移
    performSegue(withIdentifier: "result", sender: nil)
    }
    //進むボタンのアクションを設定
    @IBAction func go_forward(_ sender: Any) {
        //ボタン押下時、画像番号の更新
        dispImageNo += 1
        // 画像の番号が正常な範囲を指しているかチェック
        // 範囲より下を指している場合、最後の画像を表示
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        // 範囲より上を指している場合、最初の画像を表示
        if dispImageNo > 2 {
            dispImageNo = 0
        }
        // 画像の番号から該当の画像を読み込み
        ImageView.image = UIImage(named: imageNameArray[dispImageNo])
    }
    //戻るボタンのアクションを設定
    @IBAction func go_back(_ sender: Any) {
        //ボタン押下時、画像番号の更新
        dispImageNo -= 1
        // 画像の番号が正常な範囲を指しているかチェック
        // 範囲より下を指している場合、最後の画像を表示
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        // 範囲より上を指している場合、最初の画像を表示
        if dispImageNo > 2 {
            dispImageNo = 0
        }
        // 画像の番号から該当の画像を読み込み
        ImageView.image = UIImage(named: imageNameArray[dispImageNo])
    }
    //再生停止ボタンのアクションを設定
    @IBAction func restart_stop(_ sender: Any) {
        //再生：動作中のタイマーを1つに保つために、timer が存在しない場合だけ、タイマーを生成して動作させる
        if self.timer == nil {
            // タイマーの作成、始動
            self.timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
        }
        //停止：動作中のタイマーが存在するときだけ、タイマーの停止動作を実行する
        else if self.timer != nil {
            self.timer.invalidate()   // 現在のタイマーを破棄する
            self.timer = nil          // startTimer() の timer == nil で判断するために、 timer = nil としておく
        }
    }
    //帰還セグエ
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
    
    // selector: #selector(updatetimer(_:)) で指定された関数
    // timeInterval: 0.1, repeats: true で指定された通り、0.1秒毎に呼び出され続ける
    @objc func updateTimer(_ timer: Timer) {
        //タイマーの更新
        self.timer_sec += 2.0
        //画像の番号の更新
        self.dispImageNo += 1
        // 画像の番号が正常な範囲を指しているかチェック
        // 範囲より下を指している場合、最後の画像を表示
        if dispImageNo < 0 {
            dispImageNo = 2
        }
        // 範囲より上を指している場合、最初の画像を表示
        if dispImageNo > 2 {
            dispImageNo = 0
        }
        // 画像の番号から該当の画像を読み込み
        ImageView.image = UIImage(named: imageNameArray[dispImageNo])
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


