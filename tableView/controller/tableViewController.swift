//
//  tableViewController.swift
//  tableView
//
//  Created by Mahajan BHRIGU on 28/03/2018.
//  Copyright © 2018 Mahajan BHRIGU. All rights reserved.
//

import UIKit

class tableViewController: UITableViewController {

    @IBOutlet weak var myTableView: UITableView!
    
    var arr2 : [Receipebooks] = []
    
    var images = [UIImage(named:"12"),UIImage(named: "15"),UIImage(named:"14"),UIImage(named: "13"),UIImage(named:"11")]
    var clickedIndex : IndexPath?
    override func viewDidLoad() {
        super.viewDidLoad()
    
        arr2.append(Receipebooks(title: "Baked chilli & jacket potatoes", preptime: "Prep Time: 10 mins", cook: "Time: 1 Hr", description: "Jacket potatoes and chilli are great comfort food when the nights draw in. Make ours in the week when you're short on time for a nutritious family dinner", img: "12", serves: "Serves: 4"))
        arr2.append(Receipebooks(title: "Spaghetti Bolognese", preptime: "Prep Time: 15 mins", cook: "Time: 2 Hr", description: "Ramp up your usual spaghetti Bolognese with this recipe which throws in a few unorthodox methods and ingredients to deliver the ultimate pasta dish", img: "15", serves: "Serves: 3"))
        arr2.append(Receipebooks(title: "Thai red curry", preptime: "Prep Time: 15 mins", cook: "Time: 20 Mins", description: "Forget ordering takeaway and make your own Thai red curry at home. This classic dish takes just 15 minutes to prep and it's bursting with flavour", img: "14", serves: "Serves:4"))
        arr2.append(Receipebooks(title: "Semi-dried tomato omelette", preptime: "Prep Time: 5 mins", cook: "Time: 15 Mins", description: "Cooking up eggs with cheese and tomato makes for a super-quick meal for one that's ready in 10 minutes", img: "13", serves: " Serves: 2"))
        arr2.append(Receipebooks(title: "Pizza baked potato", preptime: "Prep Time: 5 mins", cook: "Time: 1 Hr, 45 Mins", description: "This budget-friendly supper combines two favourites in one dish. Top your jacket spuds with cheese, tomato, pepperoni and basil", img: "11", serves: "Serves: 4"))
        
        printToConsole(myTableView, withString: "test string")
        
        /*
        //
        */
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arr2.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as! bookTableViewCell
        cell.lab1?.text = arr2[indexPath.row].title
        cell.lab2?.text = arr2[indexPath.row].cook
        cell.lab3?.text = arr2[indexPath.row].serves
        cell.img.image = images[indexPath.row]
        // cell.
        
           
        return cell
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        clickedIndex = indexPath
        self.performSegue(withIdentifier: "link", sender: self)
    } // to triger the link
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        let detailVC = segue.destination as! DetailViewController
        detailVC.book = arr2[clickedIndex!.row]
       // detailVC.getImage = UIImage(named: images[indexPath.row])
        
    }
    // to send the data
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func printToConsole(_ tableView: UITableView, withString a: String) {
        print("\(tableView) - \(a)")
    }
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
