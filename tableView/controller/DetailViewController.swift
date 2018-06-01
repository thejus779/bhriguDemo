//
//  DetailViewController.swift
//  tableView
//
//  Created by Mahajan BHRIGU on 07/05/2018.
//  Copyright © 2018 Mahajan BHRIGU. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var  book : Receipebooks?
   // var getImage = UIImage!
    
    @IBOutlet weak var textarea1: UITextView!
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        l1.text = book?.title
        l2.text = book?.cook
        textarea1.text = book?.description
        let image = UIImage(named: (book?.img)!)
        img1.image = image
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
