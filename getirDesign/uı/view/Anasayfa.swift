//
//  ViewController.swift
//  getirDesign
//
//  Created by Gül Karataş on 8.10.2024.
//

import UIKit

class Anasayfa: UIViewController {

    @IBOutlet weak var kategorilerCollectionView: UICollectionView!
    
    var kategori = [Kategoriler]()
    
    var viewModel = AnasayfaModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let barapperance = UINavigationBarAppearance()
    
        //şarj göstergesinin olduğu kısmı siyah temaya çevirmek
        navigationController?.navigationBar.barStyle = .black
        //Farklı görünümlü apple ürünleri için appereance lar
        navigationController?.navigationBar.standardAppearance = barapperance
        navigationController?.navigationBar.compactAppearance = barapperance
        navigationController?.navigationBar.scrollEdgeAppearance = barapperance
        
        
        kategorilerCollectionView.delegate = self
        kategorilerCollectionView.dataSource = self
        
        _ = viewModel.kategoriListesi.subscribe(onNext: { kategoriListesi in
            self.kategori = kategoriListesi
            self.kategorilerCollectionView.reloadData()
        
        })
        
        let tasarim = UICollectionViewFlowLayout()
        
        tasarim.sectionInset = UIEdgeInsets(top: 10, left: 8, bottom: 5, right: 8)
        tasarim.minimumInteritemSpacing = 7
        tasarim.minimumLineSpacing = 7
        
        let genislik = kategorilerCollectionView.frame.size.width
        
        let yatayUzunluk = (genislik - 10) / 5
        
        tasarim.itemSize = CGSize(width: yatayUzunluk+8, height: yatayUzunluk*1.6)
        
        kategorilerCollectionView.collectionViewLayout = tasarim
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        kategorilerCollectionView.reloadData()
    }

}


extension Anasayfa: UICollectionViewDataSource , UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kategori.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let kategori = kategori[indexPath.row]
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "kategorilerHucre", for: indexPath) as! KategorilerHucre
        cell.kategoriAdiLabel.text = kategori.name
        cell.kategoriImageView .image = UIImage(named: kategori.resim!)
        
        return cell
    }
    
    
}
