class SignUpUserModel {
  String? name;
  String? email;
  String? mobile;
  String? password;

  SignUpUserModel({
    this.name,
    this.email,
    this.mobile,
    this.password,
  });

  factory SignUpUserModel.fromJson(Map<String, dynamic> json) {
    return new SignUpUserModel(
      name: json['name'],
      email: json['email'],
      mobile: json['mobile'],
      password: json['password'],
    );
  }
}

class LoginUserModel {
  String? email;

  String? password;

  LoginUserModel({
    this.email,
    this.password,
  });

  factory LoginUserModel.fromJson(Map<String, dynamic> json) {
    return new LoginUserModel(
      email: json['email'],
      password: json['password'],
    );
  }
}

class SliderList {
  final List<Slider>? sliderlist;

  SliderList({
    this.sliderlist,
  });

  factory SliderList.fromJson(List<dynamic> parsedJson) {
    List<Slider> list;
    list = parsedJson.map((i) => Slider.fromJson(i)).toList();

    return new SliderList(sliderlist: list);
  }
}

class Slider {
  String? url;

  Slider({
    this.url,
  });

  factory Slider.fromJson(Map<String, dynamic> json) {
    return new Slider(
      url: json['image'].toString(),
    );
  }
}

class HotDealList {
  final List<Slider>? hotdeallist;

  HotDealList({
    this.hotdeallist,
  });

  factory HotDealList.fromJson(List<dynamic> parsedJson) {
    List<Slider> list;
    list = parsedJson.map((i) => Slider.fromJson(i)).toList();

    return new HotDealList(hotdeallist: list);
  }
}

class HotDeal {
  String? url;
  String? itemName;

  HotDeal({
    this.url,
    this.itemName,
  });

  factory HotDeal.fromJson(Map<String, dynamic> json) {
    return new HotDeal(
      url: json['image'].toString(),
      itemName: json['name'].toString(),
    );
  }
}
