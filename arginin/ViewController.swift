//
//  ViewController.swift
//  arginin
//
//  Created by Beomkim on 2022/04/12.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func action(_ sender: Any) {
      postRequest()

    }
    
    func postRequest() {
        AF.request("http://128.199.143.189:10001/api/app/v1/get/member?memberId=3", method:.get,
                   encoding: JSONEncoding.default,
                   headers: nil).responseJSON {
                    response in
                    switch response.result{
                    case .success:
                        guard let result = response.data else {return}

                        do {
                            print(result)
                            let decoder = JSONDecoder()
                            var res = try decoder.decode(MemberResponse.self, from: result)
                            print(res)
                        } catch {
                            print("error!\(error)")
                        }
                    default:
                            return
                    }
                }
        
    }
}

