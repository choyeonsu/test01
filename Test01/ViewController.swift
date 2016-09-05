import UIKit

class ViewController: UIViewController, UIWebViewDelegate
{
    @IBOutlet weak var textFieldURL: UITextField!
    @IBOutlet weak var webViewMain: UIWebView!
    @IBOutlet weak var activityIndicatorViewWaitingMark: UIActivityIndicatorView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        webViewMain.delegate = self
        
        loadWebPage("http://www.naver.com")
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func loadWebPage(url: String)
    {
        let urlObject = NSURL(string: url)
        let request = NSURLRequest(URL: urlObject!)
        webViewMain.loadRequest(request)
    }
    
    func webViewDidStartLoad(webView: UIWebView)
    {
        activityIndicatorViewWaitingMark.startAnimating()
    }
    
    func webViewDidFinishLoad(webView: UIWebView)
    {
        activityIndicatorViewWaitingMark.stopAnimating()
    }
    
    @IBAction func touchUpInsideButtonGo(sender: UIButton) {
        loadWebPage(textFieldURL.text!)
    }
    
    @IBAction func touchUpInsideButtonSite1(sender: UIButton) {
        loadWebPage("https://www.google.co.kr/")
    }
    
    @IBAction func touchUpInsideButtonSite2(sender: UIButton) {
        loadWebPage("https://namu.wiki")
    }
    
    @IBAction func touchUpInsideButtonHTML(sender: UIButton) {
    }
    
    @IBAction func touchUpInsideButtonFile(sender: UIButton) {
    }
    
    @IBAction func tabBarButtonStop(sender: UIBarButtonItem) {
        webViewMain.stopLoading()
    }
    
    @IBAction func tabBarButtonRefresh(sender: UIBarButtonItem) {
        webViewMain.reload()
    }
    
    @IBAction func tabBarButtonGoBack(sender: UIBarButtonItem) {
        webViewMain.goBack()
    }
    
    @IBAction func tabBarButtonGoForward(sender: UIBarButtonItem) {
        webViewMain.goForward()
    }
    
}
