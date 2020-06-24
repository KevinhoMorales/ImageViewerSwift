//
//  ViewController.swift
//  Image Viewer
//
//  Created by Kevinho Morales on 6/24/20.
//  Copyright © 2020 Kevinho Morales. All rights reserved.
//

import UIKit
import ImageViewer_swift

class ViewController: UIViewController {
    
    //@IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    lazy var imageView: UIImageView = {
        let iv = UIImageView()
        iv.image = UIImage(named: "Icon")
        
        // Setup Image Viewer
        iv.setupImageViewer()
        return iv
    }()
    
    override func loadView() {
        super.loadView()
        view = UIView()
        view.backgroundColor = .white
        view.addSubview(imageView)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor, constant: 20).isActive = true
        imageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
    }

}

