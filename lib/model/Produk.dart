import 'dart:convert';

Produk produkFromJson(String str) => Produk.fromJson(json.decode(str));

String produkToJson(Produk data) => json.encode(data.toJson());

class Produk {
  String? kind;
  List<Resources>? resources;

  var limit;

  Produk({this.kind, this.resources});

  Produk.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    if (json['resources'] != null) {
      resources = <Resources>[];
      json['resources'].forEach((v) {
        resources!.add(new Resources.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    if (this.resources != null) {
      data['resources'] = this.resources!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Resources {
  String? kind;
  String? id;
  String? offerId;
  String? source;
  String? title;
  String? description;
  String? link;
  String? imageLink;
  String? contentLanguage;
  String? targetCountry;
  String? feedLabel;
  String? ageGroup;
  String? brand;
  String? color;
  String? condition;
  String? gender;
  String? googleProductCategory;
  String? gtin;
  String? itemGroupId;
  String? mpn;
  Price? price;
  List<String>? sizes;

  Resources(
      {required this.kind,
      required this.id,
      required this.offerId,
      required this.source,
      required this.title,
      required this.description,
      required this.link,
      required this.imageLink,
      required this.contentLanguage,
      required this.targetCountry,
      required this.feedLabel,
      required this.ageGroup,
      required this.brand,
      required this.color,
      required this.condition,
      required this.gender,
      required this.googleProductCategory,
      required this.gtin,
      required this.itemGroupId,
      required this.mpn,
      required this.price,
      required this.sizes});

  Resources.fromJson(Map<String, dynamic> json) {
    kind = json['kind'];
    id = json['id'];
    offerId = json['offerId'];
    source = json['source'];
    title = json['title'];
    description = json['description'];
    link = json['link'];
    imageLink = json['imageLink'];
    contentLanguage = json['contentLanguage'];
    targetCountry = json['targetCountry'];
    feedLabel = json['feedLabel'];
    ageGroup = json['ageGroup'];
    brand = json['brand'];
    color = json['color'];
    condition = json['condition'];
    gender = json['gender'];
    googleProductCategory = json['googleProductCategory'];
    gtin = json['gtin'];
    itemGroupId = json['itemGroupId'];
    mpn = json['mpn'];
    price = json['price'] != null ? new Price.fromJson(json['price']) : null;
    sizes = json['sizes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['kind'] = this.kind;
    data['id'] = this.id;
    data['offerId'] = this.offerId;
    data['source'] = this.source;
    data['title'] = this.title;
    data['description'] = this.description;
    data['link'] = this.link;
    data['imageLink'] = this.imageLink;
    data['contentLanguage'] = this.contentLanguage;
    data['targetCountry'] = this.targetCountry;
    data['feedLabel'] = this.feedLabel;
    data['ageGroup'] = this.ageGroup;
    data['brand'] = this.brand;
    data['color'] = this.color;
    data['condition'] = this.condition;
    data['gender'] = this.gender;
    data['googleProductCategory'] = this.googleProductCategory;
    data['gtin'] = this.gtin;
    data['itemGroupId'] = this.itemGroupId;
    data['mpn'] = this.mpn;
    if (this.price != null) {
      data['price'] = this.price!.toJson();
    }
    data['sizes'] = this.sizes;
    return data;
  }
}

class Price {
  String? value;
  String? currency;

  Price({this.value, this.currency});

  Price.fromJson(Map<String, dynamic> json) {
    value = json['value'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['value'] = this.value;
    data['currency'] = this.currency;
    return data;
  }
}
