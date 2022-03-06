//
//  HomeViewController.swift
//  ecommerce
//
//  Created by Tahir Uzelli on 4.03.2022.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var productsTableView: UITableView!
    var productList : [[String : Any]]?
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList?.count ?? 0
    
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let product = productList![indexPath.row]
        cell.imageView?.downloaded(from: product["image"] as! String)
        cell.textLabel?.text = String(format : "%f", product["price"] as! Double) +  (product["title"] as! String)

        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getJson()
    }
    
    func getJson(){
        let url = URL(string: urlFakeStore)
        let session = URLSession.shared
        let task = session.dataTask(with: url!){(data, response, error) in
            if error != nil{
                let alert = UIAlertController(title: "Hata", message: error?.localizedDescription, preferredStyle: UIAlertController.Style.alert)
                let okButton = UIAlertAction(title: "Tamam", style: UIAlertAction.Style.default, handler: nil)
                alert.addAction(okButton)
                self.present(alert,animated: true,completion: nil)
            }
            else{
                if data != nil{
                    do{
                        let jsonResponse = try JSONSerialization.jsonObject(with: data!, options: JSONSerialization.ReadingOptions.mutableContainers) as! [[String : Any]]
                        DispatchQueue.main.async { [self] in
                            
                            self.productList = jsonResponse
                            self.productsTableView.delegate = self
                            self.productsTableView.dataSource = self

                        }
                        
                    }
                    catch{
                        print("error")
                    }
                }
            }
            
        }
        task.resume()
    }


}
