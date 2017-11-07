//
//  ListViewController.swift
//  VIPER DEMO
//
//  Created by MMY on 06/11/2017.
//  Copyright © 2017 MMY. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController, ListViewInput {
    var output: ListViewOutput!
    var displayData: Array <ListViewDisplayItem> = Array()
    private var noData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        noData = UILabel(frame: view.bounds)
        noData.text = "No Data"
        noData.textAlignment = .center
        noData.backgroundColor = UIColor.white
        
        output.fetchData()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: tableview data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return displayData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellIdentifier") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "CellIdentifier")
        
        let displayItem = displayData[indexPath.row]
        
        cell.textLabel?.text = displayItem.name
        cell.detailTextLabel?.text = displayItem.phone
        
        return cell
    }
    
    //MARK: ListViewInput
    func show(data: Array<ListViewDisplayItem>) {
        view = tableView
        
        displayData = data
        tableView.reloadData()
    }
    
    func showNoData() {
        view = noData
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
