class PostModel{
  int? userid1;
  int? id1;
  String? title1;
  String? body1;

  PostModel({this.userid1, this.id1, this.title1, this.body1});

 PostModel factory(Map json){
    userid1 = json['userId'];
    id1 = json['id'];
    title1 = json['title'];
    body1 = json['body'];

    PostModel p1 = PostModel(userid1: userid1,id1: id1,title1: title1,body1: body1);

    return p1;
  }
}