//
//  ViewController.swift
//  WeShop
//
//  Created by THUTRA on 15/09/2024.
//

import UIKit

class CategoriesVC: UIViewController ,UITableViewDataSource,UITableViewDelegate{
   
    
    @IBOutlet weak var CategoryTable: UITableView!
    
    var categoryes: [category]!
    override func viewDidLoad() {
        super.viewDidLoad()
        categoryes = DataServices.instance.GetCategorys()
        CategoryTable.dataSource = self
        CategoryTable.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell{
            let Category = categoryes[indexPath.row] // lay category tu danh sach , indexpath lay dung vi tri tu danh sach
            cell.updateView(Category: Category)//lay view
            return cell
            
        }else{
            return CategoryCell()//neu khong lay dc view thi tao moi day vao hang dong cua view de tai su dung
        }
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let Category = categoryes[indexPath.row]//truyen vao vi tri item vua nhan
        performSegue(withIdentifier: "ProductsVC", sender: Category) //dung de thuc hien 1 segue chuyen man hinh
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productsVC = segue.destination as? ProductsVC{
            assert(sender as? category != nil)
            productsVC.initProducts(Category: sender as! category)
        }
    }
}

