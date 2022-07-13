//
//  PrefecturesListViewController.swift
//  JohnnyKadai11
//
//  Created by Johnny Toda on 2022/07/05.
//

import UIKit

final class PrefecturesListViewController: UIViewController {
    @IBOutlet private weak var prefecturesTableView: UITableView!

    @IBAction private func cancelVC(_ sender: Any) {
        dismiss(animated: true)
    }

    private let nib = "PrefecturesTableViewCell"
    private let cellID = "CellID"

    private let prefecturesName = PrefecturesData().names

    var completion: ((String) -> Void)?

    override func viewDidLoad() {
        super.viewDidLoad()
        prefecturesTableView.delegate = self
        prefecturesTableView.dataSource = self
        prefecturesTableView.register(UINib(nibName: nib, bundle: nil), forCellReuseIdentifier: cellID)
    }
}

extension PrefecturesListViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        prefecturesName.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = prefecturesTableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! PrefecturesTableViewCell

        cell.configure(name: prefecturesName[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        completion?(prefecturesName[indexPath.row])
        dismiss(animated: true)
    }
}
