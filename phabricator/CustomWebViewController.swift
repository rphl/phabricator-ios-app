//
//  CustomWebViewController.swift
//  phabricator
//
//  Created by Raphael K. on 22.11.16.
//  Copyright © 2016 Raphael K. All rights reserved.
//

import UIKit

class CustomWebViewController: UIViewController, UIWebViewDelegate {
    
    var webView: UIWebView! = nil
    
    override func loadView() {
        
        webView = UIWebView()
        webView.delegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        
        navigationItem.leftBarButtonItems = [UIBarButtonItem(image:UIImage(named: "nav_bar_back"), style: .plain, target: self, action: #selector(goBackWebView)),
                                             UIBarButtonItem(image:UIImage(named: "nav_bar_forward"), style: .plain, target: self, action: #selector(goForwardWebView)),
                                             UIBarButtonItem(image:UIImage(named: "nav_bar_refresh"), style: .plain, target: self, action: #selector(refreshWebView))]
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image:UIImage(named: "nav_bar_add"), style: .plain, target: self, action: #selector(addAction))
    }
    
    override func viewDidAppear(_ animated: Bool) {
        webView.reload()
    }
    
    func resetWebView () {}
    
    func refreshWebView () {
        webView.reload()
    }
    
    func goBackWebView() {
        webView.goBack()
    }
    
    func goForwardWebView() {
        webView.goForward()
    }
    
    
    func addAction () {}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
    }
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        UIApplication.shared.isNetworkActivityIndicatorVisible = false
        print(error)
    }

    func webView(_ webView: UIWebView, shouldStartLoadWith request: URLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        let requestedUrlString = request.url?.absoluteString
        let hideNavbarParam = "?__print__=1"
        let isAuth = "auth/login"
        let isWiki = "/w/"
        
        if((requestedUrlString?.range(of: hideNavbarParam)) == nil && (requestedUrlString?.range(of: isAuth)) == nil && (requestedUrlString?.range(of: isWiki)) == nil) {
            let newRequestedUrlString = requestedUrlString?.appending(hideNavbarParam)
            let newRequestedUrl = URL(string: newRequestedUrlString!)
            self.webView.loadRequest(URLRequest(url: newRequestedUrl!))
            
            return false
        }
        
        return true;
    }

}
