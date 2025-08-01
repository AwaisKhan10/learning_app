void main() {
  Awais awais = Awais();

  awais.title = "Awais khan";
  awais.subTitle = " khan";
  awais.price = 23;
  print(awais.title);
  print("${awais.subTitle}");
  print(awais.price);
}

class Awais {
  String? title;
  String? subTitle;
  double? price;
}
