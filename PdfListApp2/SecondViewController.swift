//
//  SecondViewController.swift
//  PdfListApp2
//
//  Created by Melih on 29.11.2022.
//

import UIKit
import PDFKit
import Firebase
import FirebaseStorage
import FirebaseDatabase

class SecondViewController: UIViewController  {

    @IBOutlet weak var pdfView: PDFView!
    
    override func viewDidLoad()  {
        super.viewDidLoad()

        let pdfView = PDFView()
        
        pdfView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pdfView)

        pdfView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        pdfView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        pdfView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        pdfView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        let storage = Storage.storage()
        let storageReference = storage.reference()
        
        let filesFolder = storageReference.child("files")
        let menu1Folder = filesFolder.child("header01")
        let menu2Folder = filesFolder.child("header02")
        let menu3Folder = filesFolder.child("header03")
        let menu4Folder = filesFolder.child("header04")
        let menu5Folder = filesFolder.child("header05")
            switch x {
            case 101:
                print("x is 101")
                    menu1Folder.listAll { (result, error) in
                        if let error = error {
                            print(error)
                        } else {
                                result?.items[0].downloadURL(completion: { url101, error in
                                    if let error = error {
                                        print(error)
                                    } else {
                                        DispatchQueue.global(qos: .background).async{
                                            if let doc101 = PDFDocument(url: url101!){
                                                DispatchQueue.main.async {
                                                    pdfView.displayMode = .singlePageContinuous
                                                    pdfView.autoScales = true
                                                    pdfView.document = doc101
                                                    self.reloadInputViews()
                                                }}
                                        }
                                    }
                                })
                            
                            
                        }}
               
            case 102:
                print("x is 102")
                    menu1Folder.listAll { (result, error) in
                        if let error = error {
                            print(error)
                        } else {
                            (result?.items[1].downloadURL(completion: { url102, error in
                                if let error = error {
                                    print(error)
                                } else {
                                    DispatchQueue.global(qos: .background).async{
                                        if let doc102 = PDFDocument(url: url102!) {
                                            DispatchQueue.main.async {
                                                pdfView.displayMode = .singlePageContinuous
                                                pdfView.autoScales = true
                                                pdfView.document = doc102

                                            }}}}
                            }))!
                            
                            
                        }}
                
            case 103:
                print("x is 103")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        DispatchQueue.main.async{
                            
                            (result?.items[2].downloadURL(completion: { url103, error in
                                if let error = error {
                                    print(error)
                                } else {
                                    
                                    let doc103 = PDFDocument(url: url103!)
                                    pdfView.document = doc103
                                }
                            }))!
                        }}}
            case 104:
                print("x is 104")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[3].downloadURL(completion: { url104, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc104 = PDFDocument(url: url104!)
                                pdfView.document = doc104
                            }
                        }))!
                    }}
                
            case 105:
                print("x is 105")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[4].downloadURL(completion: { url105, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc105 = PDFDocument(url: url105!)
                                pdfView.document = doc105
                            }
                        }))!
                    }}
                
            case 106:
                print("x is 106")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[5].downloadURL(completion: { url106, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc106 = PDFDocument(url: url106!)
                                pdfView.document = doc106
                            }
                        }))!
                    }}
            case 107:
                print("x is 107")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[6].downloadURL(completion: { url107, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc107 = PDFDocument(url: url107!)
                                pdfView.document = doc107
                            }
                        }))!
                    }}
                
            case 108:
                print("x is 101")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[7].downloadURL(completion: { url108, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc108 = PDFDocument(url: url108!)
                                pdfView.document = doc108
                            }
                        }))!
                    }}
                
            case 109:
                print("x is 101")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[8].downloadURL(completion: { url109, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc109 = PDFDocument(url: url109!)
                                pdfView.document = doc109
                            }
                        }))!
                    }}
                
            case 110:
                print("x is 110")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[9].downloadURL(completion: { url110, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc110 = PDFDocument(url: url110!)
                                pdfView.document = doc110
                            }
                        }))!
                    }}
                
                
            case 201:
                print("x is 101")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[0].downloadURL(completion: { url101, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc1 = PDFDocument(url: url101!)
                                pdfView.document = doc1
                            }
                        }))!
                    }}
            case 202:
                print("x is 102")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[1].downloadURL(completion: { url102, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc102 = PDFDocument(url: url102!)
                                pdfView.document = doc102
                            }
                        }))!
                    }}
                
            case 203:
                print("x is 103")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[2].downloadURL(completion: { url103, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc103 = PDFDocument(url: url103!)
                                pdfView.document = doc103
                            }
                        }))!
                    }}
            case 204:
                print("x is 104")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[3].downloadURL(completion: { url104, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc104 = PDFDocument(url: url104!)
                                pdfView.document = doc104
                            }
                        }))!
                    }}
                
            case 205:
                print("x is 105")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[4].downloadURL(completion: { url105, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc105 = PDFDocument(url: url105!)
                                pdfView.document = doc105
                            }
                        }))!
                    }}
                
            case 206:
                print("x is 106")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[5].downloadURL(completion: { url106, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc106 = PDFDocument(url: url106!)
                                pdfView.document = doc106
                            }
                        }))!
                    }}
            case 207:
                print("x is 107")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[6].downloadURL(completion: { url107, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc107 = PDFDocument(url: url107!)
                                pdfView.document = doc107
                            }
                        }))!
                    }}
                
            case 208:
                print("x is 101")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[7].downloadURL(completion: { url108, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc108 = PDFDocument(url: url108!)
                                pdfView.document = doc108
                            }
                        }))!
                    }}
                
            case 209:
                print("x is 101")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[8].downloadURL(completion: { url109, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc109 = PDFDocument(url: url109!)
                                pdfView.document = doc109
                            }
                        }))!
                    }}
                
            case 210:
                print("x is 110")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[9].downloadURL(completion: { url110, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc110 = PDFDocument(url: url110!)
                                pdfView.document = doc110
                            }
                        }))!
                    }}
                
            case 301:
                print("x is 101")
                menu3Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[0].downloadURL(completion: { url101, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc1 = PDFDocument(url: url101!)
                                pdfView.document = doc1
                            }
                        }))!
                    }}
            case 302:
                print("x is 102")
                menu3Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[1].downloadURL(completion: { url102, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc102 = PDFDocument(url: url102!)
                                pdfView.document = doc102
                            }
                        }))!
                    }}
                
            case 303:
                print("x is 103")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[2].downloadURL(completion: { url103, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc103 = PDFDocument(url: url103!)
                                pdfView.document = doc103
                            }
                        }))!
                    }}
            case 304:
                print("x is 104")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[3].downloadURL(completion: { url104, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc104 = PDFDocument(url: url104!)
                                pdfView.document = doc104
                            }
                        }))!
                    }}
                
            case 305:
                print("x is 105")
                menu2Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[4].downloadURL(completion: { url105, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc105 = PDFDocument(url: url105!)
                                pdfView.document = doc105
                            }
                        }))!
                    }}
                
            case 306:
                print("x is 106")
                menu1Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[5].downloadURL(completion: { url106, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc106 = PDFDocument(url: url106!)
                                pdfView.document = doc106
                            }
                        }))!
                    }}
            case 307:
                print("x is 107")
                menu3Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[6].downloadURL(completion: { url107, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc107 = PDFDocument(url: url107!)
                                pdfView.document = doc107
                            }
                        }))!
                    }}
                
            case 308:
                print("x is 101")
                menu3Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[7].downloadURL(completion: { url108, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc108 = PDFDocument(url: url108!)
                                pdfView.document = doc108
                            }
                        }))!
                    }}
                
            case 309:
                print("x is 101")
                menu3Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[8].downloadURL(completion: { url109, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc109 = PDFDocument(url: url109!)
                                pdfView.document = doc109
                            }
                        }))!
                    }}
                
            case 310:
                print("x is 110")
                menu3Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[9].downloadURL(completion: { url110, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc110 = PDFDocument(url: url110!)
                                pdfView.document = doc110
                            }
                        }))!
                    }}
                
            case 401:
                print("x is 101")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[0].downloadURL(completion: { url101, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc1 = PDFDocument(url: url101!)
                                pdfView.document = doc1
                            }
                        }))!
                    }}
            case 402:
                print("x is 102")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[1].downloadURL(completion: { url102, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc102 = PDFDocument(url: url102!)
                                pdfView.document = doc102
                            }
                        }))!
                    }}
                
            case 403:
                print("x is 103")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[2].downloadURL(completion: { url103, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc103 = PDFDocument(url: url103!)
                                pdfView.document = doc103
                            }
                        }))!
                    }}
            case 404:
                print("x is 104")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[3].downloadURL(completion: { url104, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc104 = PDFDocument(url: url104!)
                                pdfView.document = doc104
                            }
                        }))!
                    }}
                
            case 405:
                print("x is 105")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[4].downloadURL(completion: { url105, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc105 = PDFDocument(url: url105!)
                                pdfView.document = doc105
                            }
                        }))!
                    }}
                
            case 406:
                print("x is 106")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[5].downloadURL(completion: { url106, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc106 = PDFDocument(url: url106!)
                                pdfView.document = doc106
                            }
                        }))!
                    }}
            case 407:
                print("x is 107")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[6].downloadURL(completion: { url107, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc107 = PDFDocument(url: url107!)
                                pdfView.document = doc107
                            }
                        }))!
                    }}
                
            case 408:
                print("x is 101")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[7].downloadURL(completion: { url108, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc108 = PDFDocument(url: url108!)
                                pdfView.document = doc108
                            }
                        }))!
                    }}
                
            case 409:
                print("x is 101")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[8].downloadURL(completion: { url109, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc109 = PDFDocument(url: url109!)
                                pdfView.document = doc109
                            }
                        }))!
                    }}
                
            case 410:
                print("x is 110")
                menu4Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[9].downloadURL(completion: { url110, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc110 = PDFDocument(url: url110!)
                                pdfView.document = doc110
                            }
                        }))!
                    }}
                
            case 501:
                print("x is 101")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[0].downloadURL(completion: { url101, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc1 = PDFDocument(url: url101!)
                                pdfView.document = doc1
                            }
                        }))!
                    }}
            case 502:
                print("x is 102")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[1].downloadURL(completion: { url102, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc102 = PDFDocument(url: url102!)
                                pdfView.document = doc102
                            }
                        }))!
                    }}
                
            case 503:
                print("x is 103")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[2].downloadURL(completion: { url103, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc103 = PDFDocument(url: url103!)
                                pdfView.document = doc103
                            }
                        }))!
                    }}
            case 504:
                print("x is 104")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[3].downloadURL(completion: { url104, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc104 = PDFDocument(url: url104!)
                                pdfView.document = doc104
                            }
                        }))!
                    }}
                
            case 505:
                print("x is 105")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[4].downloadURL(completion: { url105, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc105 = PDFDocument(url: url105!)
                                pdfView.document = doc105
                            }
                        }))!
                    }}
                
            case 506:
                print("x is 506")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[5].downloadURL(completion: { url506, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc506 = PDFDocument(url: url506!)
                                pdfView.document = doc506
                            }
                        }))!
                    }}
            case 507:
                print("x is 507")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[6].downloadURL(completion: { url507, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc507 = PDFDocument(url: url507!)
                                pdfView.document = doc507
                            }
                        }))!
                    }}
                
            case 508:
                print("x is 508")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[7].downloadURL(completion: { url508, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc508 = PDFDocument(url: url508!)
                                pdfView.document = doc508
                            }
                        }))!
                    }}
                
            case 509:
                print("x is 501")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[8].downloadURL(completion: { url509, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc509 = PDFDocument(url: url509!)
                                pdfView.document = doc509
                            }
                        }))!
                    }}
                
            case 510:
                print("x is 510")
                menu5Folder.listAll { (result, error) in
                    if let error = error {
                        print(error)
                    } else {
                        (result?.items[9].downloadURL(completion: { url510, error in
                            if let error = error {
                                print(error)
                            } else {
                                let doc510 = PDFDocument(url: url510!)
                                pdfView.document = doc510
                            }
                        }))!
                    }}
                
            default:
                print("Switch Default value. Any of those cases did not happen! ")
            }
        }
            
        }
    

    
