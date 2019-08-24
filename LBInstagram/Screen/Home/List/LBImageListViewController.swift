//
//  LBImageListViewController.swift
//  LBInstagram
//
//  Created by wira on 8/24/19.
//  Copyright © 2019 Wira Setiawan. All rights reserved.
//

import UIKit

class LBImageListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!

    var dataList: NSMutableArray = []

    override func viewDidLoad() {
        super.viewDidLoad()
        setupData()
        setupUI()
    }

    //MARK: private function
    private func setupData() {
        dataList.addObjects(from: LBConfig.generator())
    }

    private func setupUI() {
        let nib = UINib(nibName: "LBImageListTableViewCell", bundle: Bundle.main)
        self.tableView.delegate = self
        self.tableView.dataSource = self
        self.tableView.register(nib, forCellReuseIdentifier: "CELL_ID")
    }


    private func showImageDetail(model:ImageLocationModel) {
        let viewController = LBImageDetailViewController()
        viewController.model = model
        navigationController?.pushViewController(viewController, animated: true)
    }


}

extension LBImageListViewController: UITableViewDataSource, UITableViewDelegate {

    // MARK: - table view delegate
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let model: ImageLocationModel? = (self.dataList[indexPath.row] as! ImageLocationModel)
        let cell = tableView.dequeueReusableCell(withIdentifier: "CELL_ID", for: indexPath) as! LBImageListTableViewCell
        cell.setUpData(model)
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let model: ImageLocationModel? = (self.dataList[indexPath.row] as! ImageLocationModel)
        self.showImageDetail(model: model!)
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.dataList.count
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0
    }

}
