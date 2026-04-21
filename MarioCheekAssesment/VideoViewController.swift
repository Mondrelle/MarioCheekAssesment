//
//  VideoViewController.swift
//  M11BMI_ex
//
//  Created by Eun Mi Kim on 4/20/26.
//

import UIKit
import AVKit
import AVFoundation

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func bmiImageTapped(_ sender: UIButton) {
            if let url = Bundle.main.url(forResource: "BMI", withExtension: "mp4") {
                playVideo(url: url)
            } else {
                print("BMI.mp4 not found")
            }
        }
    
    func playVideo(url: URL) {
        let player = AVPlayer(url: url)
        let playerVC = AVPlayerViewController()
        playerVC.player = player

        present(playerVC, animated: true) {
            player.play()
        }
    }

    @IBAction func mealTapped(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "healthfood", withExtension: "mp4") {
            playVideo(url: url)
        } else {
            print("healthfood.mp4 not found")
        }
    }

    @IBAction func exerciseTapped(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "videoplayback", withExtension: "mp4") {
            playVideo(url: url)
        } else {
            print("videoplayback.mp4 not found")
        }
    }
}
