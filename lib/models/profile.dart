import 'package:flutter/material.dart';
import 'package:nft_app/models/arts.dart';

class Profile {
  String? imgurl;
  String? name;
  String? twitter;
  String? desc;
  String? email;
  num? price;
  List<Arts>? creation;
  List<Arts>? collections;

  Profile(
      {
    this.imgurl,
    this.name,
    this.twitter,
    this.desc,
    this.email,
        this.price,
        required this.creation,
        required this.collections,

  }
  );
  static Profile generateProfile(){
    return Profile(imgurl: "assets/images/avatar2.png",
      name: "Oluwaseun Ogunmolu",
      twitter: "@lagrangecode",
      desc: "Flutter Developer, Data Scientist, Programmer, student of AI, I analyse with PowerBI but I love Tableau. I mostly code on Java but Python is fun. ARCGIS is good but QGIS is life.",
      email: "seunogunmolufirst1@gmail.com",
      price: 7.88,

      creation: [Arts(imgUrl: "assets/images/create1.jpeg", name: "creation1", price: 2.56, desc: "Lorem ipsum " ),
        Arts(imgUrl: "assets/images/create2.jpeg", name: "creation2", price: 2.56, desc: "Lorem ipsum " ),
        Arts(imgUrl: "assets/images/create3.jpeg", name: "creation3", price: 5.56, desc: "Lorem ipsum " ),
        Arts(imgUrl: "assets/images/create4.jpeg", name: "creation4", price: 2.56, desc: "Lorem ipsum " ),
        Arts(imgUrl: "assets/images/create5.jpeg", name: "creation5", price: 2.56, desc: "Lorem ipsum " ),
      ],
      collections: [Arts(imgUrl: "assets/images/collection1.jpeg", name: "collections1", price: 4.66, desc: "Lorem Ipsum", ),
        Arts(imgUrl: "assets/images/collection2.jpeg", name: "collections1", price: 4.66, desc: "Lorem Ipsum", ),
        Arts(imgUrl: "assets/images/collection3.jpeg", name: "collections1", price: 4.66, desc: "Lorem Ipsum", ),
        Arts(imgUrl: "assets/images/collection4.jpeg", name: "collections1", price: 4.66, desc: "Lorem Ipsum", ),
        Arts(imgUrl: "assets/images/collection5.jpeg", name: "collections1", price: 4.66, desc: "Lorem Ipsum", ),
      ],


    );


  }
}
