//
//  DetailHotelViewController.swift
//  Hotel App (Post Test 17 November 2017)
//
//  Created by Ali Abdurrahman Hidayat on 17/11/17.
//  Copyright © 2017 Ali Abdurrahman Hidayat. All rights reserved.
//

import UIKit

class DetailHotelViewController: UIViewController {
    @IBOutlet weak var namaHotel: UILabel!
    @IBOutlet weak var alamatHotel: UILabel!
    @IBOutlet weak var penilaianHotel: UILabel!
    @IBOutlet weak var rangkingHotel: UILabel!
    @IBOutlet weak var fasilitasHotel: UILabel!
    @IBOutlet weak var lokterHotel: UILabel!
    
    var passHotel:String?
    var passAlamat:String?
    var passPenilaian:String?
    var passFasilitas:String?
    var passLokter:String?
    var passRangking:String?
   
    
    override func viewDidLoad() {
        namaHotel.text = passHotel!
        alamatHotel.text = passAlamat!
        rangkingHotel.text = passRangking!
        fasilitasHotel.text = passFasilitas!
        lokterHotel.text = passLokter!
        penilaianHotel.text = passPenilaian!
        super.viewDidLoad()

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
