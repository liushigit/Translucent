//
//  ViewController.swift
//  Translucent
//
//  Created by Shi on 2018/7/13.
//  Copyright © 2018年 Shi. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    
    @IBOutlet weak var scrollView: NSScrollView!
    @IBOutlet weak var clipView: NSClipView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let path = "/Library/Desktop Pictures/Snow.jpg"
        let url = URL(fileURLWithPath: path, isDirectory: false)
        
        let image = NSImage(contentsOf: url)
        
        let imageView = NSImageView(image: image!)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        clipView.addSubview(imageView)
        
        let h = NSLayoutConstraint.constraints(
            withVisualFormat: "H:|[imageView]|",
            options: NSLayoutConstraint.FormatOptions(rawValue: 0),
            metrics: nil,
            views: ["imageView" : imageView])
        
        let v = NSLayoutConstraint.constraints(
            withVisualFormat: "V:|[imageView]|",
            options: NSLayoutConstraint.FormatOptions(rawValue: 0),
            metrics: nil,
            views: ["imageView" : imageView])
        
        
        scrollView.documentView = imageView
        
        NSLayoutConstraint.activate([h, v].flatMap({$0}))
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

