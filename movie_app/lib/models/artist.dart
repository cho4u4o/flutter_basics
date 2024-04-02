class ArtistModel {
  final String name;
  final int popularity;

  ArtistModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        popularity = json['popularity'];
}
