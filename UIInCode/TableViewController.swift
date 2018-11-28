//
//  TableViewController.swift
//  UIInCode
//
//  Created by Vikram Gupta on 11/26/18.
//  Copyright © 2018 Vikram Gupta. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource {
    private let contacts = [
        Contact(name: "Kelly Goodwin", email: "Designer", phone: "1234567890"),
        Contact(name: "Mohammad Hussain", email: "SEO Specialist", phone: "1234567890"),
        Contact(name: "John Young", email: "Interactive Designer", phone: "1234567890"),
        Contact(name: "Tamilarasi Mohan", email: "Architect", phone: "1234567890"),
        Contact(name: "Kim Yu", email: "Economist", phone: "1234567890"),
        Contact(name: "Derek Fowler", email: "Web Strategist", phone: "1234567890"),
        Contact(name: "Shreya Nithin", email: "Product Designer", phone: "1234567890"),
        Contact(name: "Emily Adams", email: "Editor", phone: "1234567890"),
        Contact(name: "Aabidah Amal", email: "Creative Director", phone: "1234567890"),
        ]
    
    private let contactsTableView = UITableView()
    
    private func setAutoLayout() {
        contactsTableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        contactsTableView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        contactsTableView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        contactsTableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchork).isActive = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contactsTableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(contactsTableView)
        setAutoLayout()
        contactsTableView.dataSource = self
        contactsTableView.register(UITableViewCell.self, forCellReuseIdentifier: "contactCell")
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        cell.textLabel?.text = contacts[indexPath.row].name
        return cell
    }
}
