class MainModel{
  int? id1;
  String? name1;
  String? username1;
  String? email1;
  String? phone1;
  String? website1;
  Address? address1;
  Company? company1;

  MainModel(
      {this.id1,
      this.name1,
      this.username1,
      this.email1,
      this.phone1,
      this.website1,
      this.address1,
      this.company1});

  MainModel mainFromjson(Map json)
  {
    id1 = json['id'];
    name1 = json['name'];
    username1 = json['username'];
    email1 = json['email'];
    phone1 = json['phone'];
    website1 = json['website'];
    address1 = Address().addressFromJSon(json['address']);
    company1 = Company().companyFormJson(json['company']);

    return MainModel(id1: id1,name1: name1,username1: username1,email1: email1,phone1: phone1,website1: website1,address1: address1,company1: company1);
  }
}

class Address{
  String? street1;
  String? suite1;
  String? city1;
  String? zipcode1;
  Geo? geo1;

  Address({this.street1, this.suite1, this.city1, this.zipcode1, this.geo1});

  Address addressFromJSon(Map json)
  {
    street1 = json['street'];
    suite1 = json['suite'];
    city1 = json['city'];
    zipcode1 = json['zipcode'];
    geo1 = Geo().geoFromJson(json['geo']);

    return Address(city1: city1,geo1: geo1,street1: street1,suite1: suite1,zipcode1: zipcode1);
  }
}

class Geo{
  String? lat1;
  String? lng1;

  Geo({this.lat1, this.lng1});

  Geo geoFromJson(Map json){

    lat1 = json['lat'];
    lng1 = json['lng'];

    return Geo(lat1: lat1,lng1: lng1);
  }
}

class Company{
  String? name1;
  String? catchPhrase1;
  String? bs1;

  Company({this.name1, this.catchPhrase1,this.bs1});

  Company companyFormJson(Map json){
    name1 = json['name'];
    catchPhrase1 = json['catchPhrase'];
    bs1 = json['bs'];

    return Company(name1:name1,catchPhrase1: catchPhrase1,bs1: bs1);

  }
}
