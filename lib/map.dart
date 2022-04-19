class MapModel {
  String name;
  String tagLine;
  String image;
  List<String> images;
  String description;
  String line;

  MapModel(this.name, this.tagLine, this.image, this.images,
      this.description, this.line);
}

List<MapModel> map = mapData
    .map((item) => MapModel(item['campus'], item['tagLine'],
    item['image'], item['images'], item['description'], item['line']))
    .toList();

List mapData = [
  {
    "campus": "Mahidol Salaya",
    "image": "https://science.mahidol.ac.th/images/mapsalaya2.jpg",
    "images": [
      "https://science.mahidol.ac.th/images/mapsalaya2.jpg",
    ],
    "description":
    "Salaya Campus",
    "line": "Red/Yellow/Green/Blue Line"
  }
];