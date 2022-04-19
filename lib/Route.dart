class RouteModel {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;
  String time;

  RouteModel(this.name, this.tagLine, this.image, this.images,
      this.description, this.time);
}

List<RouteModel> route = routeData
    .map((item) => RouteModel(item['color'], item['tagLine'],
    item['image'], item['images'], item['description'], item['time']))
    .toList();

List routeData = [
  {
    "color": "RED LINE, SALAYA",
    "tagLine": "RED LINE \n MU Hall-RS-MS",
    "image":
      "https://thumbs.dreamstime.com/b/old-tram-cartoon-red-isolated-white-d-illustration-134500603.jpg",
    "images": [
      "https://mahidol.ac.th/temp/2018/01/Wasin_0007.jpg",
      "https://museum.li.mahidol.ac.th/en/museums/wp-content/uploads/2019/01/12-Gallery01-768x512.jpg",
      "https://mapio.net/images-p/38238582.jpg",
      "https://www.chi-athenaeum.org/assets/IAA_2018_A/PRINCE_MAHIDOL_HALL_7301_2.jpg",
      "https://muic.mahidol.ac.th/eng/wp-content/uploads/2020/01/MUIC-Building-1.jpg",
      "https://bangkokpost.com/photos_content/large/prefix_1/2127/5127/5127-1287644261w597iovqbq.jpg",
      "https://i.ytimg.com/vi/gPXU1GDuatw/maxresdefault.jpg",
      "https://nlac-old.mahidol.ac.th/green/images/bt_portfolio/74/original/e424fa6a4d92efcd442052fbe54c4bec.jpeg",
      "https://cf.mahidol.ac.th/en/wp-content/uploads/2019/03/b1.jpg",
      "https://graduate.mahidol.ac.th/assets61/img/gp157.jpg",
    ],
      "description":
        "1)Station > 39)Baan Kanphai 31)MS > 35)Hall > 33)SC > 30)SH > 27)IC Old > 26)OP > 24)Gate4 > 22)EG3 > 20)EG1 15)Ramathibodi > 10)Condominiums > 5)RS > 2) Sport > 1)Station",
      "time": "06.00-20.00"
  },
  {
    "color": "BLUE LINE, SALAYA",
    "tagLine": "BLUE LINE \n MU LAKE-VS-LA",
    "image":
    "https://thumbs.dreamstime.com/b/old-tram-cartoon-back-blue-view-isolated-white-d-illustration-138271423.jpg",
    "images": [
      "https://fastly.4sqi.net/img/general/600x600/29744051_NR39QfidzAFR2vfaI1TmEC21l9r7DKpanLKVqMEqVYE.jpg",
      "https://vs.mahidol.ac.th/th/assets/images/img-7900-hdr-1-1920x1280.jpg",
      "https://fastly.4sqi.net/img/general/600x600/14724689_1f9Ji7irx1xIC0DiJUkSahJXHd16st5BDvjxBE3yMgE.jpg",
      "https://la.mahidol.ac.th/education/ma/wp-content/uploads/2020/01/ma-ling-600x400.jpg",
      "https://live.staticflickr.com/65535/50035780317_fdbf2764c2_k.jpg",
      "https://museum.li.mahidol.ac.th/en/museums/wp-content/uploads/2019/01/04-Gallery07-768x512.jpg"
    ],
    "description":
    "1)Station > 40)MU LAKE > 41)Parking4 > 4)VS > 7)M-Wit > 10)Condo > 11)LA > 23)IMB > 26)OP > 32)IIN > 38)SireePark > 1)Station",
    "time": "06.00-20.00"
  },
  {
    "color": "GREEN LINE, SALAYA",
    "tagLine": "GREEN LINE \n Library-ICT-SS",
    "image":
    "https://thumbs.dreamstime.com/b/old-tram-cartoon-side-green-view-isolated-white-d-illustration-142792232.jpg",
    "images": [
      "https://mahidol.ac.th/temp/2018/01/Wasin_0007.jpg",
      "https://op.mahidol.ac.th/ra/wp-content/uploads/2018/05/LAB-SC-RUBBER.jpg",
      "https://i.ytimg.com/vi/2z-PUnLHWWk/maxresdefault.jpg",
      "https://muic.mahidol.ac.th/eng/wp-content/uploads/2020/01/MUIC_master_t2-1.jpg",
      "https://bangkokpost.com/photos_content/large/prefix_1/2127/5127/5127-1287644261w597iovqbq.jpg",
      "https://i.ytimg.com/vi/gPXU1GDuatw/maxresdefault.jpg",
      "https://www.ict.mahidol.ac.th/wp-content/uploads/2021/04/ictmahidol.jpg",
      "https://inmu2.mahidol.ac.th/en/wp-content/uploads/2019/06/build4.jpg",
      "https://graduate.mahidol.ac.th/assets61/img/gp158.jpg"
    ],
    "description":
    "1)Station > 39)Baan Kanphai > 33)SC > 30)SH > 27)IC Old > 26)OP > 24)Gate4 > 22)EG3 > 21)ICT > 12)SS > 2)Sport > 1)Station",
    "time": "06.00-20.00"
  },
  {
    "color": "YELLOW LINE, SALAYA",
    "tagLine": "YELLOW LINE \n OP-MS-IC-MLC",
    "image":
    "https://thumbs.dreamstime.com/b/old-tram-cartoon-yellow-isolated-white-d-illustration-140770514.jpg",
    "images": [
      "https://op.mahidol.ac.th/th/pic/banner-mlc.jpg",
      "https://lh5.googleusercontent.com/p/AF1QipNyeETu_byFq9rHjK78kmCVNpY5MAnjLjV1f7bc=w1080-k-no",
      "https://i.ytimg.com/vi/2z-PUnLHWWk/maxresdefault.jpg",
      "https://muic.mahidol.ac.th/eng/wp-content/uploads/2020/01/MUIC-Building-1.jpg",
      "https://bangkokpost.com/photos_content/large/prefix_1/2127/5127/5127-1287644261w597iovqbq.jpg",
      "https://il.mahidol.ac.th/eng/wp-content/uploads/2018/03/il-front2.jpg",
      "https://museum.li.mahidol.ac.th/en/museums/wp-content/uploads/2019/01/12-Gallery01-768x512.jpg",
      "https://i.pinimg.com/originals/fe/14/60/fe146004aa563456b6f017f910f9c880.jpg",
      "https://www.designinsiderlive.com/wp-content/uploads/2017/01/feat20.jpg"
    ],
    "description":
    "MLC > 33)SC > 30)SH > 27)IC Old > 26)OP > 27)IC New > 34)Music Museum > 31)MS > 35)Hall",
    "time": "06.00-20.00"
  },
];