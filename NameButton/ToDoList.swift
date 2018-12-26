//
//  ToDoList.swift
//  NameButton
//
//  Created by Samantha Cortopassi on 12/26/18.
//  Copyright © 2018 Samantha Cortopassi. All rights reserved.
//

import UIKit

class ToDoList: NSObject {
    private var items: [String] = []
    
    func add(_ item: String) {
        items.append(item)
    }

}

extension ToDoList: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let item = items[indexPath.row]
        
        cell.textLabel!.text = item
        
        return cell
    }
    
    
}
