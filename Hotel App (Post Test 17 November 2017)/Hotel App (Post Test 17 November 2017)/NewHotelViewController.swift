//
//  NewHotelViewController.swift
//  Hotel App (Post Test 17 November 2017)
//
//  Created by Ali Abdurrahman Hidayat on 17/11/17.
//  Copyright © 2017 Ali Abdurrahman Hidayat. All rights reserved.
//

import UIKit

class NewHotelViewController: UIViewController {
    @IBOutlet weak var etNamaHotel: UITextField!
    @IBOutlet weak var etAlamat: UITextField!
    @IBOutlet weak var etRate: UITextField!
    @IBOutlet weak var etFasilitas: UITextField!
    @IBOutlet weak var etLokter: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnSubmit(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let hote = Hotel(context: context)
        
        hote.nemHotel = etNamaHotel.text
        hote.alaHotel = etAlamat.text
        hote.penHotel = etRate.text
        hote.fasHotel = etFasilitas.text
        hote.lokterHotel = etLokter.text
        
        if etNamaHotel.text == "" {
            let alert = UIAlertController(title: "Peringatan", message: "Nama Hotel tidak boleh kosong", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Siap", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etAlamat.text == "" {
            let alert = UIAlertController(title: "Peringatan", message: "Alamat tidak boleh kosong", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Siap", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etRate.text == "" {
            let alert = UIAlertController(title: "Peringatan", message: "Penilaian tidak boleh kosong", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Siap", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etFasilitas.text == "" {
            let alert = UIAlertController(title: "Peringatan", message: "Fasilitas tidak boleh kosong", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Siap", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else if etLokter.text == "" {
            let alert = UIAlertController(title: "Peringatan", message: "Alamat Terdekat tidak boleh kosong", preferredStyle: UIAlertControllerStyle.alert)
            alert.addAction(UIAlertAction(title: "Siap", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }else{
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            _ = navigationController?.popViewController(animated: true)
            
            //mencetak kalau data berhasil ditambahkan
            print("Data berhasil disimpan")
        }
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
