//
//  ViewController.swift
//  PdfListApp2
//
//  Created by Melih on 29.11.2022.
//

import UIKit
import FirebaseCore
import FirebaseFirestore

struct cellData {
    var opened = Bool()
    var title = String()
    var sectionData = [String]()
}
var x = 0



class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var carList = [String]()
    var mercedesList = [String]()
    var audiList = [String]()
    var porscheList = [String]()
    var volkswagenList = [String]()
    var bmwList = [String]()
    var sixthList = [String]()
    var tableViewData = [cellData]()
    
    
    override func viewDidLoad() {
        //  super.viewDidLoad()
        
        //  tableView.delegate = self
        //  tableView.dataSource = self
        getDataFromFirestore()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        do{sleep(4)}
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        if carList[0].isEmpty == false {
            tableViewData.append(cellData(opened: false, title: carList[0], sectionData: mercedesList))
        }
        if carList[1].isEmpty == false {
            tableViewData.append(cellData(opened: false, title: carList[1], sectionData: bmwList))
        }
        if carList[2].isEmpty == false {
             tableViewData.append(cellData(opened: false, title: carList[2], sectionData: audiList))
        }
        if carList[3].isEmpty == false {
             tableViewData.append(cellData(opened: false, title: carList[3], sectionData: porscheList))
        }
        if carList[4].isEmpty == false {
             tableViewData.append(cellData(opened: false, title: carList[4], sectionData: volkswagenList))
        }
    
 /*   tableViewData = [cellData(opened: false, title: carList[0], sectionData: mercedesList),
                     cellData(opened: false, title: carList[1], sectionData: bmwList),
                     cellData(opened: false, title: carList[2], sectionData: audiList),
                     cellData(opened: false, title: carList[3], sectionData: porscheList),
                     cellData(opened: false, title: carList[4], sectionData: volkswagenList),
    ]
    */
}
                                           
                                           
    func getDataFromFirestore() {
        let db = Firestore.firestore()
           let menu1DocRef = db.collection("header01")
           let menu2DocRef = db.collection("header02")
           let menu3DocRef = db.collection("header03")
           let menu4DocRef = db.collection("header04")
           let menu5DocRef = db.collection("header05")
        
        menu1DocRef.addSnapshotListener { snapshot, error in
               if error != nil {
                   print(error?.localizedDescription ?? "Error!")
               } else {
                   if snapshot != nil {
                       self.mercedesList.removeAll(keepingCapacity: false)
                       for document in snapshot!.documents {
                           let documentID = document.documentID
                           self.carList.append(documentID)
                         //  print(self.carList, "Document ID Burada !!!!!!!!")
                           
                               let liste01 = document.get("01") as? String
                           self.mercedesList.append(liste01!)
                           
                           if let liste02 = document.get("02") as? String {
                               self.mercedesList.append(liste02)
                           }
                           if let liste03 = document.get("03") as? String {
                               self.mercedesList.append(liste03)
                           }
                           let liste04 = document.get("04") as? String
                           if liste04 != nil {
                               self.mercedesList.append(liste04!)
                           }
                           let liste05 = document.get("05") as? String
                           if liste05 != nil {
                               self.mercedesList.append(liste05!)
                           }
                           let liste06 = document.get("06") as? String
                           if liste06 != nil {
                               self.mercedesList.append(liste06!)
                           }
                           let liste07 = document.get("07") as? String
                           if liste07 != nil {
                               self.mercedesList.append(liste07!)
                           }
                           let liste08 = document.get("08") as? String
                           if liste08 != nil {
                               self.mercedesList.append(liste08!)
                           }
                           let liste09 = document.get("09") as? String
                           if liste09 != nil {
                               self.mercedesList.append(liste09!)
                           }
                           let liste10 = document.get("10") as? String
                           if liste10 != nil {
                               self.mercedesList.append(liste10!)
                           }
                       }
                     //  print(self.mercedesList, "MERCEDES BURDA !!!!!!!!!")
                       self.tableView.reloadData()
                   }}}
           
           menu2DocRef.addSnapshotListener { snapshot, error in
                 if error != nil {
                     print(error?.localizedDescription ?? "Error!")
                 } else {
                     if snapshot != nil {
                         self.bmwList.removeAll(keepingCapacity: false)
                         for document in snapshot!.documents {
                             let documentID = document.documentID
                             self.carList.append(documentID)
                          //   print(self.carList, "Document ID Burada !!!!!!!!")
                             
                                 let liste01 = document.get("01") as? String
                             if liste01 != nil {
                                 self.bmwList.append(liste01!)
                             }
                             
                             let liste02 = document.get("02") as? String
                                 if liste02 != nil {
                                     self.bmwList.append(liste02!)
                                 }
                             
                             let liste03 = document.get("03") as? String
                             if liste03 != nil {
                                 self.bmwList.append(liste03!)
                             }
                             let liste04 = document.get("04") as? String
                             if liste04 != nil {
                                 self.bmwList.append(liste04!)
                             }
                             let liste05 = document.get("05") as? String
                             if liste05 != nil {
                                 self.bmwList.append(liste05!)
                             }
                             let liste06 = document.get("06") as? String
                             if liste06 != nil {
                                 self.bmwList.append(liste06!)
                             }
                             let liste07 = document.get("07") as? String
                             if liste07 != nil {
                                 self.bmwList.append(liste07!)
                             }
                             let liste08 = document.get("08") as? String
                             if liste08 != nil {
                                 self.bmwList.append(liste08!)
                             }
                             let liste09 = document.get("09") as? String
                             if liste09 != nil {
                                 self.bmwList.append(liste09!)
                             }
                             let liste10 = document.get("10") as? String
                             if liste10 != nil {
                                 self.bmwList.append(liste10!)
                             }
                             }
                         self.tableView.reloadData()
                         }
                     }}
           
          menu3DocRef.addSnapshotListener { snapshot, error in
               if error != nil {
                   print(error?.localizedDescription ?? "Error!")
               } else {
                   if snapshot != nil {
                       self.audiList.removeAll(keepingCapacity: false)
                       for document in snapshot!.documents {
                           let documentID = document.documentID
                           self.carList.append(documentID)
                           //print(self.carList, "Document ID Burada !!!!!!!!")
                          
                           
                               let liste01 = document.get("01") as? String
                           self.audiList.append(liste01!)
                           
                           if let liste02 = document.get("02") as? String {
                               self.audiList.append(liste02)
                           }
                           if let liste03 = document.get("03") as? String {
                               self.audiList.append(liste03)
                           }
                           let liste04 = document.get("04") as? String
                           if liste04 != nil {
                               self.audiList.append(liste04!)
                           }
                           let liste05 = document.get("05") as? String
                           if liste05 != nil {
                               self.audiList.append(liste05!)
                           }
                           let liste06 = document.get("06") as? String
                           if liste06 != nil {
                               self.audiList.append(liste06!)
                           }
                           let liste07 = document.get("07") as? String
                           if liste07 != nil {
                               self.audiList.append(liste07!)
                           }
                           let liste08 = document.get("08") as? String
                           if liste08 != nil {
                               self.audiList.append(liste08!)
                           }
                           let liste09 = document.get("09") as? String
                           if liste09 != nil {
                               self.audiList.append(liste09!)
                           }
                           let liste10 = document.get("10") as? String
                           if liste10 != nil {
                               self.audiList.append(liste10!)
                           }
                       }
                       self.tableView.reloadData()
                   }}}
           menu4DocRef.addSnapshotListener { snapshot, error in
                 if error != nil {
                     print(error?.localizedDescription ?? "Error!")
                 } else {
                     if snapshot != nil {
                         self.porscheList.removeAll(keepingCapacity: false)
                         for document in snapshot!.documents {
                             let documentID = document.documentID
                             self.carList.append(documentID)
                             // print(self.carList, "Document ID Burada !!!!!!!!")
                             
                                 let liste01 = document.get("01") as? String
                             self.porscheList.append(liste01!)
                             
                             if let liste02 = document.get("02") as? String {
                                 self.porscheList.append(liste02)
                             }
                             if let liste03 = document.get("03") as? String {
                                 self.porscheList.append(liste03)
                             }
                             let liste04 = document.get("04") as? String
                             if liste04 != nil {
                                 self.porscheList.append(liste04!)
                             }
                             let liste05 = document.get("05") as? String
                             if liste05 != nil {
                                 self.porscheList.append(liste05!)
                             }
                             let liste06 = document.get("06") as? String
                             if liste06 != nil {
                                 self.porscheList.append(liste06!)
                             }
                             let liste07 = document.get("07") as? String
                             if liste07 != nil {
                                 self.porscheList.append(liste07!)
                             }
                             let liste08 = document.get("08") as? String
                             if liste08 != nil {
                                 self.porscheList.append(liste08!)
                             }
                             let liste09 = document.get("09") as? String
                             if liste09 != nil {
                                 self.porscheList.append(liste09!)
                             }
                             let liste10 = document.get("10") as? String
                             if liste10 != nil {
                                 self.porscheList.append(liste10!)
                             }
                         }
                         self.tableView.reloadData()
                     }}}
           
           menu5DocRef.addSnapshotListener { snapshot, error in
                 if error != nil {
                     print(error?.localizedDescription ?? "Error!")
                 } else {
                     if snapshot != nil {
                         self.volkswagenList.removeAll(keepingCapacity: false)
                         for document in snapshot!.documents {
                             let documentID = document.documentID
                             self.carList.append(documentID)
                             //print(self.carList, "Document ID Burada !!!!!!!!")
                             
                                 let liste01 = document.get("01") as? String
                             self.volkswagenList.append(liste01!)
                             
                             if let liste02 = document.get("02") as? String {
                                 self.volkswagenList.append(liste02)
                             }
                             if let liste03 = document.get("03") as? String {
                                 self.volkswagenList.append(liste03)
                             }
                             let liste04 = document.get("04") as? String
                             if liste04 != nil {
                                 self.volkswagenList.append(liste04!)
                             }
                             let liste05 = document.get("05") as? String
                             if liste05 != nil {
                                 self.volkswagenList.append(liste05!)
                             }
                             let liste06 = document.get("06") as? String
                             if liste06 != nil {
                                 self.volkswagenList.append(liste06!)
                             }
                             let liste07 = document.get("07") as? String
                             if liste07 != nil {
                                 self.volkswagenList.append(liste07!)
                             }
                             let liste08 = document.get("08") as? String
                             if liste08 != nil {
                                 self.volkswagenList.append(liste08!)
                             }
                             let liste09 = document.get("09") as? String
                             if liste09 != nil {
                                 self.volkswagenList.append(liste09!)
                             }
                             let liste10 = document.get("10") as? String
                             if liste10 != nil {
                                 self.volkswagenList.append(liste10!)
                             }
                         }
                         self.tableView.reloadData()
                     }}}
       }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].opened == true {
            return tableViewData[section].sectionData.count + 1
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
                return UITableViewCell() }
            cell.textLabel?.text = tableViewData[indexPath.section].title
            
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") else {
                return UITableViewCell() }
            cell.textLabel?.text = tableViewData[indexPath.section].sectionData[indexPath.row - 1]
            
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.row == 0 {
            if tableViewData[indexPath.section].opened == true {
                tableViewData[indexPath.section].opened = false
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .automatic)
                
            } else {
                tableViewData[indexPath.section].opened = true
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .automatic)
            }
        }
        //mercedesList
        else if (indexPath.row == 1) && (tableViewData[indexPath.section].sectionData[0] == mercedesList[0]) {
            x = 101
            performSegue(withIdentifier: "toSecondVC", sender: nil)
            
        } else if indexPath.row == 2 && (tableViewData[indexPath.section].sectionData[1] == mercedesList[1]){
            
            x = 102
            performSegue(withIdentifier: "toSecondVC", sender: nil)
            
        } else if indexPath.row == 3 && (tableViewData[indexPath.section].sectionData[2] == mercedesList[2]) {
            x = 103
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 4 && (tableViewData[indexPath.section].sectionData[3] == mercedesList[3]) {
            x = 104
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 5 && (tableViewData[indexPath.section].sectionData[4] == mercedesList[4]) {
            x = 105
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 6 && (tableViewData[indexPath.section].sectionData[5] == mercedesList[5]) {
            x = 106
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 7 && (tableViewData[indexPath.section].sectionData[6] == mercedesList[6]) {
            x = 107
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 8 && (tableViewData[indexPath.section].sectionData[7] == mercedesList[7]) {
            x = 108
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 9 && (tableViewData[indexPath.section].sectionData[8] == mercedesList[8]) {
            x = 109
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 3 && (tableViewData[indexPath.section].sectionData[9] == mercedesList[9]) {
            x = 110
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        // bmwList
        else if indexPath.row == 1 && (tableViewData[indexPath.section].sectionData[0] == bmwList[0])
        {
            x = 201
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 2 && (tableViewData[indexPath.section].sectionData[1] == bmwList[1]){
            x = 202
            performSegue(withIdentifier: "toSecondVC", sender: nil)
            
        } else if indexPath.row == 3 && (tableViewData[indexPath.section].sectionData[2] == bmwList[2]) {
            x = 203
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 4 && (tableViewData[indexPath.section].sectionData[3] == bmwList[3]) {
            x = 204
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 5 && (tableViewData[indexPath.section].sectionData[4] == bmwList[4]) {
            x = 205
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 6 && (tableViewData[indexPath.section].sectionData[5] == bmwList[5]) {
            x = 206
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 7 && (tableViewData[indexPath.section].sectionData[6] == bmwList[6]) {
            x = 207
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 8 && (tableViewData[indexPath.section].sectionData[7] == bmwList[7]) {
            x = 208
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 9 && (tableViewData[indexPath.section].sectionData[8] == bmwList[8]) {
            x = 209
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 10 && (tableViewData[indexPath.section].sectionData[9] == bmwList[9]) {
            x = 210
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        // audilist
        else if indexPath.row == 1 && (tableViewData[indexPath.section].sectionData[0] == audiList[0])
        {
            x = 301
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 2 && (tableViewData[indexPath.section].sectionData[1] == audiList[1]){
            x = 302
            performSegue(withIdentifier: "toSecondVC", sender: nil)
            
        } else if indexPath.row == 3 && (tableViewData[indexPath.section].sectionData[2] == audiList[2]) {
            x = 303
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 4 && (tableViewData[indexPath.section].sectionData[3] == audiList[3]) {
            x = 304
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 5 && (tableViewData[indexPath.section].sectionData[4] == audiList[4]) {
            x = 305
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 6 && (tableViewData[indexPath.section].sectionData[5] == audiList[5]) {
            x = 306
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 7 && (tableViewData[indexPath.section].sectionData[6] == audiList[6]) {
            x = 307
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 8 && (tableViewData[indexPath.section].sectionData[7] == audiList[7]) {
            x = 308
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 9 && (tableViewData[indexPath.section].sectionData[8] == audiList[8]) {
            x = 309
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 10 && (tableViewData[indexPath.section].sectionData[9] == audiList[9]) {
            x = 310
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        // porschelist
        else if indexPath.row == 1 && (tableViewData[indexPath.section].sectionData[0] == porscheList[0])
        {
            x = 401
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 2 && (tableViewData[indexPath.section].sectionData[1] == porscheList[1]){
            x = 402
            performSegue(withIdentifier: "toSecondVC", sender: nil)
            
        } else if indexPath.row == 3 && (tableViewData[indexPath.section].sectionData[2] == porscheList[2]) {
            x = 403
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 4 && (tableViewData[indexPath.section].sectionData[3] == porscheList[3]) {
            x = 404
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 5 && (tableViewData[indexPath.section].sectionData[4] == porscheList[4]) {
            x = 405
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 6 && (tableViewData[indexPath.section].sectionData[5] == porscheList[5]) {
            x = 406
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 7 && (tableViewData[indexPath.section].sectionData[6] == porscheList[6]) {
            x = 407
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 8 && (tableViewData[indexPath.section].sectionData[7] == porscheList[7]) {
            x = 408
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 9 && (tableViewData[indexPath.section].sectionData[8] == porscheList[8]) {
            x = 409
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 10 && (tableViewData[indexPath.section].sectionData[9] == porscheList[9]) {
            x = 410
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        // volkswagenList
        else if indexPath.row == 1 && (tableViewData[indexPath.section].sectionData[0] == volkswagenList[0])
        {
            x = 501
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 2 && (tableViewData[indexPath.section].sectionData[1] == volkswagenList[1]){
            x = 502
            performSegue(withIdentifier: "toSecondVC", sender: nil)
            
        } else if indexPath.row == 3 && (tableViewData[indexPath.section].sectionData[2] == volkswagenList[2]) {
            x = 503
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 4 && (tableViewData[indexPath.section].sectionData[3] == volkswagenList[3]) {
            x = 504
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 5 && (tableViewData[indexPath.section].sectionData[4] == volkswagenList[4]) {
            x = 505
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 6 && (tableViewData[indexPath.section].sectionData[5] == volkswagenList[5]) {
            x = 506
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 7 && (tableViewData[indexPath.section].sectionData[6] == volkswagenList[6]) {
            x = 507
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 8 && (tableViewData[indexPath.section].sectionData[7] == volkswagenList[7]) {
            x = 508
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 9 && (tableViewData[indexPath.section].sectionData[8] == volkswagenList[8]) {
            x = 509
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        else if indexPath.row == 10 && (tableViewData[indexPath.section].sectionData[9] == volkswagenList[9]) {
            x = 510
            performSegue(withIdentifier: "toSecondVC", sender: nil)
        }
        
        
        else {
            print("Error: Couldn't get to the Second ViewController :(")
        }
    }

}

