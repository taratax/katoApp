//
//  Model.swift
//  testmy_001
//
//  Created by taratax on 07/01/2017.
//  Copyright © 2017 com.thegabrielk. All rights reserved.
//

import UIKit
var glcounter = 0

var myarray = [
    ["Spodek","NOSPR HQ","Silesian Museum","MCK","Main Square","Cathedral of Christ the King","Kosciuszko Park","The Jewish Cemetery"],
    ["Hotel angelo","Hotel Katowice","Hotel Silesian","Hotel Senator"],
    ["moodro bistro & cafe","Tatiana","Via Toscana","Hurry Curry","Kafej","Patio","Len Arte"],
    ["Mariacka St.","Browariat","Spencer Pub","Club Garage","Rajzefiber"],
    ["Taxi","KZK GOP","Silesian Interurbans","Upper Silesian Railway"]
]

//var myarray = ["Spodek","NOSPR HQ","Silesian Museum","MCK"]
var myPicures = [
    ["Katowice_Spodek-_Nowa_elewacja","nospr-1","museum_001","mck-katowice-1",
     "640px-Katowicki_rynek_04","katowice_kathedralwe_outside_001","Katowice-Park_Kosciuszki_pomnik","jewish_cemetery_002"],
    ["Hotel-angelo_001","Hotel-Katowice_001","Hotel-Silesian_001","Hotel-senator_001"],
    ["modro_bistro_001","tatiana_nowa_1","ingresso-non-fumatori_via_toscana","hurry_curry_outside_001","kafej_katowice_outside_001","Patio_outside_001","Lenarte_outsie_001"],
    ["Mariacka_outside_001","browariat7_inside_001","PUB_SPENCER_inside_001","club_garage_inside_001","rajzefiber_inside_001"],
    ["taxi_echo_001","kzk-gop-1","tramwaje_slaskie_001","koleje_slaskie_001"]

]
var detailPic = [
    ["spodek_outside_002","bartekbarczyk_orkiestra_4","muzeum_nowe_25","Biuro_kogresowe_001","Katowicki_rynek_02","cathedral_outside_002","Katowice-Park_Kosciuszki_pomnik","jewish_cemetery_001"],
    ["angelo_inside_001","hotel-katowice_outside_001","hotel_silesian_inside_001","hotel-senator-inside_001"],
    ["modro_bistro_inside_001","tatiana_z_zarogiem","via_toscana_inside_001","hurry_curry_1","kafej-inside_001-small","Patio_inside_001","Lenarte_inside_001"],
    ["mariacka_outside_002","browariat_inside_002","the-spencer-pub_inside_002","club_garage_iniside_002","rajzefiber_inside_002"],
    ["echo_taxi_detail_001","kzkgop_detail_001","interurbans_detail_001","koleje_slaskie_detail_001"]
]

var myHeaders = [
 ["Visit Spodek","Visit Orchestra","Visit Museum","Visit Convention Bureau","Visit Main Square","Visit Cathedral of Christ the King","Visit Kosciuszko Park","The Jewish Cemetery"],
 ["Hotel angelo","Hotel Katowice","Hotel Silesian","Hotel Senator"],
 ["moodro bistro & cafe","Tatiana restaurant","Via Toscana","Hurry Curry","Kafej","Patio restaurant","Len Arte - Italian Pizza"],
 ["Mariacka","Browariat","Spencer","Club Garage","Rajzefiber (Travel Fever)"],
 ["Taxi","KZK GOP","Silesian Interurbans","Upper Silesian Railway"]
]


var colorsSchm  = [
 ["r":1.00,"g":0.72,"b":0.25,"a":1.0],
 ["r":0.32, "g":0.71, "b":0.62, "a":1.0],
 ["r":0.29, "g":0.56, "b":0.89, "a":1.0],
 ["r":0.56, "g":0.33, "b":0.76, "a":1.0],
 ["r":1.00,"g":0.72,"b":0.25,"a":1.0]
]


let plistPath = Bundle.main.path(forResource: "katoApp",ofType: "plist")
let txtdictionary = NSDictionary(contentsOfFile: plistPath!)


let textArray = txtdictionary?["Text"] as? [[String]]
//let chapterImagesArray = dictionary?["ChapterImages"] as? NSArray
//let title = dictionary?["Title"] as? String


