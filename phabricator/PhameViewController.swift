//
//  ViewController.swift
//  phabricator
//
//  Created by Raphael K. on 22.11.16.
//  Copyright © 2016 Raphael K. All rights reserved.
//

import UIKit

class PhameViewController: CustomWebViewController {

    let url = URL(string: "\(Config.general.baseurl)phame/?__print__=1")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Phame"
        navigationItem.rightBarButtonItem = nil;
    
        webView.loadRequest(URLRequest(url: url))
    }
    
    override func resetWebView () {
        webView.loadRequest(URLRequest(url: url))
    }

}

