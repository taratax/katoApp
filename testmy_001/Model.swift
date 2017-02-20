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
    [
        "Spodek","NOSPR HQ","Silesian Museum","MCK","Insurgents' Monument","Main Square","Cathedral","Kosciuszko Park","The Jewish Cemetery","The Wilson Shaft Gallery","Nikiszowiec","Museum of Katowice History","Guitar museum katowice","Cinemas"
    ],
    [
        "Hotel angelo","Novotel Katowice Centrum","Hotel Katowice","Hotel Diament Katowice","Hotel Silesian","Hotel Senator","Hostel Katowice","Hostel Rynek 7","Hostel Kattowitz","Mosquito apartments"
    ],
    [
        "moodro bistro & cafe","Tatiana","Via Toscana","Hurry Curry","Kafej","Patio","Len Arte","Golden donkey"
    ],
    [
        "Mariacka St.","Browariat","Spencer Pub","Upojeni bar","Rajzefiber","Biala malpa","Hospoda","Maly Kredens"
    ],
    [
        "Taxi","KZK GOP","Silesian Interurbans","Upper Silesian Railway","Pyrzowice Airport"
    ]
]

var myHeaders = [
    [
        "Visit Spodek","Visit Orchestra","Visit Museum","Visit Convention Bureau",
        "Insurgents' Monument","Visit Main Square","Cathedral of Christ the King",
        "Visit Kosciuszko Park","The Jewish Cemetery","The Wilson Shaft","Nikiszowiec","Museum of Katowice History",
        "Guitar museum katowice","Cinemas"
    ]
    ,
    ["Hotel angelo","Novotel Katowice","Hotel Katowice","Hotel Diament Katowice","Hotel Silesian","Hotel Senator","Hostel Katowice","Hostel Rynek 7","Hostel Kattowitz","Mosquito"
    ],
    [
        "moodro bistro & cafe","Tatiana restaurant","Via Toscana","Hurry Curry","Kafej","Patio restaurant","Len Arte - Italian Pizza","Golden donkey"
        
    ],
    ["Mariacka","Browariat","Spencer","Upojeni","Rajzefiber (Travel Fever)","Biala malpa","Hospoda","Maly Kredens"],
    ["Taxi","KZK GOP","Silesian Interurbans","Upper Silesian Railway","Pyrzowice Airport"]
]

var myPicures = [
    [
        "Katowice_Spodek-_Nowa_elewacja","nospr-1","museum_001","mck-katowice-1","katowice_eu_powst_001",
     "640px-Katowicki_rynek_04","katedra-out-1","Katowice-Park_Kosciuszki","jewish_cemetery_002",
     "szyb_wilson_out_001","Nikisz-out-1","Katowice-Muzeum_Historii_Katowic_out_001","museum_guitar_in_001","Katowice_Punkt_44"
    ]
    ,
    [
        "Hotel-angelo_001","Novotel_out_001","Hotel-Katowice_001","hotel_diament_out_001","Hotel-Silesian_001","Hotel-senator_001","hostel_katowice_out_001","hostel_7_rynek_out_001","hostel_kattowitz_in_001","mosquito_inside_001"
    ],
    [
        "modro_bistro_001","tatiana_nowa_1","ingresso-non-fumatori_via_toscana","hurry_curry_outside_001","kafej_katowice_outside_001","Patio_outside_001","Lenarte_outsie_001",
        "Golden-Donkey_out_001"
    ]
    ,
    [
        "Mariacka_outside_001","browariat7_inside_001","PUB_SPENCER_inside_001","upojeni_out_001","rajzefiber_inside_001",
        "biala_malpa_out_001","Hospoda_in_001","szkic_link_maly_kredens_05"
    ]
    ,
    [
        "taxi_echo_001","kzk-gop-1","tramwaje_slaskie_001","koleje_slaskie_001","Pyrzowice_out_001"
    ]

]
var detailPic = [
 [
    "spodek_outside_002","nospr-2","muzeum_nowe_25","Biuro_kogresowe_001","katowice_the_city_powst_001","Katowicki_rynek_02","katedra-out-2","Kosciol_sw_Michala_Katowice_001","jewish_cemetery_001","szyb_wilson_in_002","Nikisz-out-2","Historia_katowic_pokoj_dziecinny",
    "museum_guitar_in_002","Cinemas_katowice_001"
 ]
,
 [
"angelo_inside_001","Novotel_in_001","hotel-katowice_outside_001","hotel_diament_in_001","hotel_silesian_inside_001","hotel-senator-inside_001","hostel_katowice_in_001","hostel_katowice_rynek_out_002","hostel_kattowitz_in_001","mosquito_inside_002"
 ]
,
 [
"modro_bistro_inside_001","tatiana_z_zarogiem","via_toscana_inside_001","hurry_curry_1","kafej-inside_001-small","Patio_inside_001","Lenarte_inside_001"
    ,"Golden_donkey_in_001"
 ]
,
 [
    "mariacka_outside_002","browariat_inside_002","the-spencer-pub_inside_002","upojeni_in_001","rajzefiber_inside_002",
    "biala_malpa_in_001","Hospoda_in_002","maly_kredens_in_001"
 ]
,
 [
"echo_taxi_detail_001","kzkgop_detail_001","interurbans_detail_001","PKP_Dworzec_Katowice","Pyrzowice_in_001"
 ]
]




var colorsSchm  = [
 ["r":1.00,"g":0.72,"b":0.25,"a":1.0],
 ["r":0.32, "g":0.71, "b":0.62, "a":1.0],
 ["r":0.29, "g":0.56, "b":0.89, "a":1.0],
 ["r":0.56, "g":0.33, "b":0.76, "a":1.0],
 ["r":1.00,"g":0.72,"b":0.25,"a":1.0]
]
let themeColor = UIColor(red:0.11, green:0.71, blue:1.00, alpha:1.0)

let plistPath = Bundle.main.path(forResource: "katoApp",ofType: "plist")
let txtdictionary = NSDictionary(contentsOfFile: plistPath!)


let textArray = txtdictionary?["Text"] as? [[String]]



