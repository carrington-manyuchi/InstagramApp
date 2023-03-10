//
//  CameraViewController.swift
//  Instagram
//
//  Created by Carrington Tafadzwa Manyuchi on 2022/12/24.
//

import UIKit

import UIKit

class CameraViewController: UIViewController {
    
    @IBOutlet weak var simpleCameraView: SimpleCameraView!
    
    var simpleCamera: SimpleCamera!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        simpleCamera = SimpleCamera(cameraView: simpleCameraView)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        simpleCamera.startSession()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        simpleCamera.stopSession()
        
    }
    

    @IBAction func startCapture(_ sender: Any) {
        
        if simpleCamera.currentCaptureMode == .photo {
            
            simpleCamera.takePhoto { (image, success) in
                
                if success {
                    
                    print("image success")
                    
                }
                
            }
            
        }
        
    }
    

}
