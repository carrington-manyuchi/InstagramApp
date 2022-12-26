//
//  SimpleCameraView.swift
//  Instagram
//
//  Created by Carrington Tafadzwa Manyuchi on 2022/12/24.
//

import AVFoundation

import UIKit

class SimpleCameraView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        (layer as! AVCaptureVideoPreviewLayer).videoGravity = AVLayerVideoGravity.resizeAspectFill
        
        (layer as! AVCaptureVideoPreviewLayer).masksToBounds = true
        
    }
    
    func set(session: AVCaptureSession) {
        
        (layer as! AVCaptureVideoPreviewLayer).session = session
        
    }
    
    override class var layerClass: AnyClass {
        
        return AVCaptureVideoPreviewLayer.self
        
    }
    
}
