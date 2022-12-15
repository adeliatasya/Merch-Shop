import 'package:uas_prakmobile/models/Produk.dart';
import 'package:uas_prakmobile/services/api.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProdukUi extends ChangeNotifier {
  List<Resources> product = [];
  bool isLoading = true;

  ProdukUi() {
    getData();
  }

  void getData() {
    isLoading = true;
    notifyListeners();
    api.getProduk().then((value) {
      isLoading = false;
      if (value != null) {
        product = value;
      }
      notifyListeners();
    });
  }
}
