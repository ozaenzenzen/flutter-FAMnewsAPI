class SourceAPI{
  String id;
  String name;

  SourceAPI({this.id, this.name});

  factory SourceAPI.source(Map<String, dynamic> object){
    return SourceAPI(
      id: object['id'].toString(),
      name: object['name']
    );
  }

}