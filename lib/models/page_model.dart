// To parse this JSON data, do
//
//     final pageModel = pageModelFromJson(jsonString);

import 'dart:convert';

PageModel pageModelFromJson(String str) => PageModel.fromJson(json.decode(str));

String pageModelToJson(PageModel data) => json.encode(data.toJson());

class PageModel {
    final String mainTitle;
    final List<HomeIcon> homeIcons;
    final Button button;
    final List<Section> sections;

    PageModel({
        required this.mainTitle,
        required this.homeIcons,
        required this.button,
        required this.sections,
    });

    factory PageModel.fromJson(Map<String, dynamic> json) => PageModel(
        mainTitle: json["mainTitle"],
        homeIcons: List<HomeIcon>.from(json["homeIcons"].map((x) => HomeIcon.fromJson(x))),
        button: Button.fromJson(json["button"]),
        sections: List<Section>.from(json["sections"].map((x) => Section.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "mainTitle": mainTitle,
        "homeIcons": List<dynamic>.from(homeIcons.map((x) => x.toJson())),
        "button": button.toJson(),
        "sections": List<dynamic>.from(sections.map((x) => x.toJson())),
    };
}

class Button {
    final String text;

    Button({
        required this.text,
    });

    factory Button.fromJson(Map<String, dynamic> json) => Button(
        text: json["text"],
    );

    Map<String, dynamic> toJson() => {
        "text": text,
    };
}

class HomeIcon {
    final String logo;
    final String name;

    HomeIcon({
        required this.logo,
        required this.name,
    });

    factory HomeIcon.fromJson(Map<String, dynamic> json) => HomeIcon(
        logo: json["logo"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "logo": logo,
        "name": name,
    };
}

class Section {
    final String title;
    final String sideTitle;
    final List<Card> cards;

    Section({
        required this.title,
        required this.sideTitle,
        required this.cards,
    });

    factory Section.fromJson(Map<String, dynamic> json) => Section(
        title: json["title"],
        sideTitle: json["sideTitle"],
        cards: List<Card>.from(json["cards"].map((x) => Card.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "sideTitle": sideTitle,
        "cards": List<dynamic>.from(cards.map((x) => x.toJson())),
    };
}

class Card {
    final String title;
    final String subtitle;
    final String trailing;
    final String leading;

    Card({
        required this.title,
        required this.subtitle,
        required this.trailing,
        required this.leading,
    });

    factory Card.fromJson(Map<String, dynamic> json) => Card(
        title: json["title"],
        subtitle: json["subtitle"],
        trailing: json["trailing"],
        leading: json["leading"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "trailing": trailing,
        "leading": leading,
    };
}
