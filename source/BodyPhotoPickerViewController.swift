//
//  BodyPhotoPickerViewController.swift
//  DimBackground
//
//  Created by scdi on 7/11/16.
//  Copyright © 2016 Totem. All rights reserved.
//

import UIKit

class BodyPhotoPickerViewController: UIViewController {
    var photoView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.clearColor()
        let photoViewFrame = CGRectMake(150, 150, 350, 350)
        photoView = UIView(frame: photoViewFrame)
        photoView.backgroundColor = UIColor.clearColor()
        photoView.opaque = false
        photoView.layer.borderColor = UIColor.blackColor().CGColor
        photoView.layer.borderWidth = 0.8
        photoView.layer.shadowColor = UIColor.blackColor().CGColor
        photoView.layer.shadowOpacity = 0.6
        photoView.layer.shadowRadius = 50
        photoView.layer.shadowOffset = CGSize(width: 5, height: 5)
        photoView.layer.cornerRadius = 15
        photoView.layer.masksToBounds = false
        photoView.center = self.view.center
        self.view.addSubview(photoView)
        
        
        ///TODO: add button
        let frame = CGRect(x: photoViewFrame.origin.x-10, y:photoViewFrame.origin.y+350, width: 70, height: 42)
        let cameraButton  = UIButton(type: UIButtonType.Custom) as UIButton
        cameraButton.frame = frame
        cameraButton.opaque = true
        let image = UIImage(named: "Camera") as UIImage?
        cameraButton.setImage(image, forState: .Normal)
        photoView.addSubview(cameraButton)
        
        
        cameraButton.addTarget(self, action: #selector(BodyPhotoPickerViewController.takePhoto), forControlEvents: .TouchUpInside)
        
        
    }
    //TODO: add action
    func takePhoto() {
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
