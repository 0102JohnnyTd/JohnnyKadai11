//
//  ViewController.swift
//  JohnnyKadai11
//
//  Created by Johnny Toda on 2022/07/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var selectedPrefectureLabel: UILabel!
    
    @IBAction private func showPrefecturesListVC(_ sender: Any) {
        let prefecturesListVC = UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: storyboardID) as! PrefecturesListViewController

        prefecturesListVC.completion = { [self] in selectedPrefectureLabel.text = $0 }

        let nav = UINavigationController(rootViewController: prefecturesListVC)
        nav.modalPresentationStyle = .fullScreen

        present(nav, animated: true)
    }

    private let storyboardName = "PrefecturesList"
    private let storyboardID = "StoryboardID"
}
