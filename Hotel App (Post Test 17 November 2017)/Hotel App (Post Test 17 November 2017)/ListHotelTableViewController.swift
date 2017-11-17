//
//  ListHotelTableViewController.swift
//  Hotel App (Post Test 17 November 2017)
//
//  Created by Ali Abdurrahman Hidayat on 17/11/17.
//  Copyright © 2017 Ali Abdurrahman Hidayat. All rights reserved.
//

import UIKit

class ListHotelTableViewController: UITableViewController {
    var hotel : [Hotel] = []
    
    var namaSelected : String?
    var alamatSelected : String?
    var rateSelected : String?
    var fasilitasSelected : String?
    var lokterSelected : String?
    var penilaianSelected : String?
    
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return hotel.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellHotel", for: indexPath) as! CellListHotelTableViewCell

        // Configure the cell...
        
        let dataHotel = hotel[indexPath.row]
        
        if let dataHotell = dataHotel.nemHotel{
            cell.labelHotel.text = dataHotell
        }
        if let dataHotell2 = dataHotel.alaHotel{
            cell.labelAlamat.text = dataHotell2
        }
        if let dataHotell3 = dataHotel.penHotel{
            cell.labelPenilaian.text = dataHotell3
        }
        if let dataHotell4 = dataHotel.ranHotel{
            cell.labelRangking.text = dataHotell4
        }
        return cell
    }
    override func viewWillAppear(_ animated: Bool) {
        hotelData()
        tableView.reloadData()
    }
    func hotelData() {
        do{
            hotel = try context.fetch(Hotel.fetchRequest())
        }
        catch{
            print("Fetching Failed")
        }
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath){
        
        if editingStyle == .delete {
            let Hot = hotel[indexPath.row]
            context.delete(Hot)
            //Delete data
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            do{
                hotel = try context.fetch(Hotel.fetchRequest())
            }
            catch{
                print("Fetching Failed")
            }
        }
        tableView.reloadData()
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        //mengecek data yang dikirim
        print("Row \(indexPath.row)selected")
        
        let hot = hotel[indexPath.row]
        
        namaSelected = hot.nemHotel
        alamatSelected = hot.alaHotel
        rateSelected = hot.penHotel
        fasilitasSelected = hot.fasHotel
        lokterSelected = hot.lokterHotel
        performSegue(withIdentifier: "passHotel", sender: self)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passHotel"{
        
            let dataHotel = segue.destination as!DetailHotelViewController
           
            dataHotel.passHotel = namaSelected
            dataHotel.passAlamat = alamatSelected
            dataHotel.passRangking = rateSelected
            dataHotel.passFasilitas = fasilitasSelected
            dataHotel.passLokter = lokterSelected
            dataHotel.passPenilaian = penilaianSelected
            
        }
    }
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
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
