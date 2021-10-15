//
//  DetailViewController.swift
//  Project1
//
//  Created by Юрий Ни on 15.10.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var picture: UIImageView!
    var selectedImage: String?
    var selectedImageIndex: Int = 0
    var maxIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = selectedImage?.components(separatedBy: ".")[0].appending("  (\(selectedImageIndex) of \(maxIndex))")
        navigationItem.largeTitleDisplayMode = .never
        if let imageToLoad = selectedImage {
            picture.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.hidesBarsOnTap = false
    }
}
