//
//  ViewController.swift
//  WebFrameTest
//
//  Created by b on 2/17/16.
//  Copyright © 2016 b. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBAction func backButton(sender: AnyObject) {
        webView.goBack()
    }

//    @IBAction func doRefresh(AnyObject) {
//        webView.reload()
//    }
//    
//    @IBAction func goForward(forwardButton) {
//        webView.goForward()
//    }
//    @IBAction func stop(AnyObject) {
//        webView.stopLoading()
//    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
        //webView.frame = self.view.frame;
        //print("H:\(self.view.frame.height), W:\(self.view.frame.width)")
        //webView.frame = CGRectMake(0, 0, 100, 100)
        //print("H:\(self.view.frame.height), W:\(self.view.frame.width)")

        
        let initialUrl = NSBundle.mainBundle().objectForInfoDictionaryKey("Initial URL") as! String
        let url = NSURL (string: initialUrl)
        print(webView.loading)
        //let url = NSURL (string: "http://www.jmu.eduasdf/")
        let requestObj = NSURLRequest(URL: url!)
        //webView.scalesPageToFit = true
        webView.loadRequest(requestObj)
        //webView.delegate = self;
        print(webView.loading)
        webView.hidden = false
        print(webView.loading)
        
        
        // todo:
        // check for network
        //     webView.loading property will tell if it's still loading
        //     Set the delegate property to an object conforming to the UIWebViewDelegate protocol if you want to track the loading of web content.
        // have a way to open a link in the device's native browser for links outside the app's ecosystem
        // what are the limitations of notifications?
        // navigation menu
        // #1. bookmarking system with ability to change default screen (ie, make this bookmark the default screen)
        // #2. note taking system
        // #3. preferences
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

//    func webView(webView: UIWebView, didFailProvisionalNavigation navigation: WKNavigation, withError error: NSError) {
  //      if(error.code == NSURLErrorNotConnectedToInternet){
    //        webView.loadHTMLString(Constants.OfflineHtmlString!,baseURL:  nil)
      //  }
   // }
    
    
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print("aaaaaaaaaa")
        //let myAlert = UIAlertController(title: "Alert", message: error?.localizedDescription, preferredStyle: UIAlertControllerStyle.Alert)
        //self.presentViewController(myAlert, animated: true, completion: nil)
    }
    
//    func webView(webView: UIWebView!, didFailLoadWithError error: NSError!) {
  //      print("Webview fail with error \(error)");
    //}
/**
    func webView(webView: UIWebView!, shouldStartLoadWithRequest request: NSURLRequest!, navigationType: UIWebViewNavigationType) -> Bool {
    return true;
    }
    
    func webViewDidStartLoad(webView: UIWebView!) {
        print("Webview started Loading")
    }
    
    func webViewDidFinishLoad(webView: UIWebView!) {
        print("Webview did finish load")
    }
    
*/
    
}

