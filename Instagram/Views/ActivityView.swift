
//
//  ActivityView.swift
//  Instagram
//
//  Created by Carrington Tafadzwa Manyuchi on 2022/12/27.
//

import UIKit

class ActivityView: UIView, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var activityData: [Activity] = [Activity]() {
        
        didSet {
            
            tableView.reloadData()
            
        }
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        tableView.register(UINib(nibName: "ActivityTableViewCell", bundle: nil), forCellReuseIdentifier: "ActivityTableViewCell")
        
        tableView.delegate = self
        
        tableView.dataSource = self
        
        tableView.tableFooterView = UIView()
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return CGFloat(80.0)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return activityData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ActivityTableViewCell") as! ActivityTableViewCell
        
        cell.profileImage.image = activityData[indexPath.row].userImage
        
        cell.detailsLabel.text = activityData[indexPath.row].details
        
        return cell
        
    }
    

}
