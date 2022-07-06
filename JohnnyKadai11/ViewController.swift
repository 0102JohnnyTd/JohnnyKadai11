//
//  ViewController.swift
//  JohnnyKadai11
//
//  Created by Johnny Toda on 2022/07/05.
//

import UIKit

class ViewController: UIViewController {
    @IBAction private func showPrefecturesListVC(_ sender: Any) {
        let prefecturesListVC = UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: storyboardID) as! PrefecturesListViewController

        let nav = UINavigationController(rootViewController: prefecturesListVC)
        nav.modalPresentationStyle = .fullScreen

        present(nav, animated: true)
    }

    private let storyboardName = "PrefecturesList"
    private let storyboardID = "StoryboardID"

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
