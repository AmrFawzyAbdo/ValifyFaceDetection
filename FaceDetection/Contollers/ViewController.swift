//
//  ViewController.swift
//  FaceDetection
//
//  Created by Amr Fawzy on 23/01/2024.
//

import UIKit
import ValifyFaceDetection

/// The main view controller responsible for handling face detection functionality.
class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    /// Action triggered when the face detection button is pressed.
    ///
    /// - Parameter sender: The button triggering the action.
    
    @IBAction func faceDetectionBtn(_ sender: Any) {
        // Create an instance of SelfieCameraViewController
        let selfieCameraVC = SelfieCameraViewController()
        
        // Set the current view controller as the delegate for capturing events
        selfieCameraVC.delegate = self
        
        // Wrap the SelfieCameraViewController in a navigation controller for better user experience
        let navigationController = UINavigationController(rootViewController: selfieCameraVC)
        navigationController.modalPresentationStyle = .fullScreen
        
        // Present the navigation controller modally
        present(navigationController, animated: true, completion: nil)
    }
    
}

// MARK: - SelfieCaptureDelegate Extension

extension ViewController : SelfieCaptureDelegate {
    /// Delegate method called when an image is approved during the face detection process.
    ///
    /// - Parameter image: The approved image, or nil if approval fails.
    
    func didApproveImage(_ image: UIImage?) {
        print("Did approve image")
        // Handle approve button press action here
        if let capturedImage = image {
            print("Image approved successfully: \(capturedImage)")
        } else {
            print("Image approval failed.")
        }
    }
}

