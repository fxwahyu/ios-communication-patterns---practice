//
//  Game2ViewController.swift
//  Communication Patterns Example
//
//  Created by Wahyu Herdianto on 18/07/24.
//

import UIKit
import WebKit

class BrowserViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var webview: WKWebView!
    @IBOutlet weak var loading: UIActivityIndicatorView!
    
    private let BROWSER_URL: String = "https://google.com"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadWebview()
    }
    
    private func loadWebview() {
        webview.navigationDelegate = self
        if let request = URL(string: BROWSER_URL) {
            webview.load(URLRequest(url: request))
        }
    }
    
    func webView(_ webView: WKWebView, didCommit navigation: WKNavigation!) {
        loading.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        loading.stopAnimating()
    }
}
