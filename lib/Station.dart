class StationModel {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;
  String line;

  StationModel(this.name, this.tagLine, this.image, this.images,
      this.description, this.line);
}

List<StationModel> station = stationData
    .map((item) => StationModel(item['location'], item['tagLine'],
    item['image'], item['images'], item['description'], item['line']))
    .toList();

List stationData = [
  {
    "location": "Prine Mahidol Hall",
    "tagLine": "Prine Mahidol Hall",
    "image":
    "https://www.music.mahidol.ac.th/tokyophil/images/mahidol-hall.jpg",
    "images": [
      "https://i.pinimg.com/originals/93/7c/55/937c55858e48e5fc5ce19d972b9e01a7.jpg",
      "https://www.music.mahidol.ac.th/tokyophil/images/mahidol-hall.jpg",
      "https://www.chi-athenaeum.org/assets/IAA_2018_A/PRINCE_MAHIDOL_HALL_7301_2.jpg",
      "http://terrabkk.com/wp-content/uploads/2015/09/Prince-Mahidol-Hall.jpg",
    ],
    "description":
    "Prince Mahidol Hall was designed for multipurpose music, commencement ceremonies, and so forth.",
    "line": "Red/Yellow Line"
  },
  {
    "location": "Mahidol Learning Center",
    "tagLine": "Mahidol Learning Center",
    "image":
    "https://pbs.twimg.com/media/Dp4HXoGU4AEDepd.jpg",
    "images": [
      "http://4.bp.blogspot.com/-oiRuTk08W4c/WHOmESNtEEI/AAAAAAAACt8/vlMRT28Zn5s3SRFu05RHiYvi3uS9trrugCK4B/s1600/DSC_2350.JPG",
      "https://pbs.twimg.com/media/Dp4HXoGU4AEDepd.jpg",
      "https://f.ptcdn.info/380/028/000/1423756738-IMG5075-o.jpg",
      "https://www.ict.mahidol.ac.th/wp-content/uploads/2021/04/mlc1-2.jpg",
    ],
    "description":
    "The Mahidol Learning Center consists of an innovation center, 400-seat auditorium, mini-theater, and exhibition area.",
    "line": "Yellow Line"
  },
  {
    "location": "MU LAKE",
    "tagLine": "MU LAKE",
    "image":
    "https://mahidol.ac.th/temp/2020/01/031-2.jpg",
    "images": [
      "https://mahidol.ac.th/temp/2020/01/031-2.jpg",
      "https://fastly.4sqi.net/img/general/600x600/29744051_NR39QfidzAFR2vfaI1TmEC21l9r7DKpanLKVqMEqVYE.jpg",
      "https://pbs.twimg.com/media/CjROP-EUYAIeZZ6.jpg",
      "https://lh5.googleusercontent.com/p/AF1QipNyXdnFdJXDTlD11z8kD6RTWR9jx8olM9qi9wtR=w1080-k-no",
    ],
    "description":
    "MU Lake is full of people who come to exercise or watch the sunset.",
    "line": "Blue Line"
  },
];