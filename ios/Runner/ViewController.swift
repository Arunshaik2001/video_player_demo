//
//  ViewController.swift
//  Runner
//
//  Created by Shaik Ahron on 09/07/22.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func play(_ sender: UIButton) {
        playLocalVideo()
    }
    
    func playLocalVideo() {
        guard let path = Bundle.main.path(forResource: "sample", ofType:"mp4") else {
                    debugPrint("video.mp4 not found")
                    return
                }
                let player = AVPlayer(url: URL(fileURLWithPath: path))
                let playerController = AVPlayerViewController()
                playerController.player = player
                present(playerController, animated: true) {
                    player.play()
                }
    }
}
