class ResponseData {
  Data data;

  ResponseData({this.data});

  ResponseData.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : json['root']!=null ? Data.fromJson(json['root']):null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.toJson();
    }
    return data;
  }
}

class Data {
  Settings settings;
  List<MainLogos> mainLogos;
  List<Menu> bottomMenu;
  List<Menu> sideMenu;

  Data({this.settings, this.mainLogos, this.bottomMenu, this.sideMenu});

  Data.fromJson(Map<String, dynamic> json) {
    settings = json['settings'] != null
        ? new Settings.fromJson(json['settings'])
        : null;
    if (json['main_logos'] != null) {
      mainLogos = new List<MainLogos>();
      json['main_logos'].forEach((v) {
        mainLogos.add(new MainLogos.fromJson(v));
      });
    }
    if (json['bottom_menu'] != null) {
      bottomMenu = new List<Menu>();
      json['bottom_menu'].forEach((v) {
        bottomMenu.add(new Menu.fromJson(v));
      });
    }
    if (json['side_menu'] != null) {
      sideMenu = new List<Menu>();
      json['side_menu'].forEach((v) {
        sideMenu.add(new Menu.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.settings != null) {
      data['settings'] = this.settings.toJson();
    }
    if (this.mainLogos != null) {
      data['main_logos'] = this.mainLogos.map((v) => v.toJson()).toList();
    }
    if (this.bottomMenu != null) {
      data['bottom_menu'] = this.bottomMenu.map((v) => v.toJson()).toList();
    }
    if (this.sideMenu != null) {
      data['side_menu'] = this.sideMenu.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Settings {
  String videoLink;
  String videoPathLocal; //local
  String mainPage;
  String maintanancePage;
  String noInternetImage;
  String pageTimeOut;

  Settings(
      {this.videoLink,
        this.mainPage,
        this.maintanancePage,
        this.noInternetImage,
        this.pageTimeOut});

  Settings.fromJson(Map<String, dynamic> json) {
    videoLink = json['video_link'];
    mainPage = json['main_page'];
    maintanancePage = json['maintanance_page'];
    noInternetImage = json['no_internet_image'];
    pageTimeOut = json['page_time_out'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['video_link'] = this.videoLink;
    data['main_page'] = this.mainPage;
    data['maintanance_page'] = this.maintanancePage;
    data['no_internet_image'] = this.noInternetImage;
    data['page_time_out'] = this.pageTimeOut;
    return data;
  }
}

class MainLogos {
  String logo;
  String logoLocalPath;
  String name;

  MainLogos({this.logo, this.name});

  MainLogos.fromJson(Map<String, dynamic> json) {
    logo = json['logo'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['logo'] = this.logo;
    data['name'] = this.name;
    return data;
  }
}

class Menu {
  String title;
  String icon;
  String iconLocalPath;
  Link link;
  Link langString;
  String maintanancePage;

  Menu(
      {this.title,
        this.icon,
        this.link,
        this.langString,
        this.maintanancePage});

  Menu.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    icon = json['icon'];
    link = json['link'] != null ? new Link.fromJson(json['link']) : null;
    langString = json['lang_string'] != null
        ? new Link.fromJson(json['lang_string'])
        : null;
    maintanancePage = json['maintanance_page'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['icon'] = this.icon;
    if (this.link != null) {
      data['link'] = this.link.toJson();
    }
    if (this.langString != null) {
      data['lang_string'] = this.langString.toJson();
    }
    data['maintanance_page'] = this.maintanancePage;
    return data;
  }
}

class Link {
  String ar;
  String en;

  Link({this.ar, this.en});

  Link.fromJson(Map<String, dynamic> json) {
    ar = json['ar'];
    en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ar'] = this.ar;
    data['en'] = this.en;
    return data;
  }
}
class Language {
  String ar;
  String en;

  Language({this.ar, this.en});

  Language.fromJson(Map<String, dynamic> json) {
    ar = json['ar'];
    en = json['en'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ar'] = this.ar;
    data['en'] = this.en;
    return data;
  }
}
