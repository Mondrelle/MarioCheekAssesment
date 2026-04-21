//
//  WebDisplayViewController.swift
//  M11BMI_ex
//
//  Created by Eun Mi Kim on 4/20/26.
//


import UIKit
import WebKit

class WebDisplayViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    var websiteURL: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        guard let websiteURL = websiteURL,
              let url = URL(string: websiteURL) else {
            print("Invalid URL")
            return
        }

        let request = URLRequest(url: url)
        webView.load(request)
    }
}
