import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

String searchHintHomePage = 'Cari Layanan, Makanan, & tujuan';
final CarouselController ctrlSaldoSlider = CarouselController();

var saldoGojek = ['Rp.', 'Rp.'];

final ff_poppins = 'Poppins';

final List<String> iconMenu = [
  'assets/images/menu/goride.png',
  'assets/images/menu/gocar.png',
  'assets/images/menu/gofood.png',
  'assets/images/menu/gosend.png',
  'assets/images/menu/mart.png',
  'assets/images/menu/data.png',
  'assets/images/menu/club.png',
  'assets/images/menu/more.png',
];

final introImg = {
  'slide1': {
    'img': 'assets/images/ilus/gojek.png',
    'keterangan': 'assets/images/ilus/gojek.png',
  },
  'slide2': 'assets/images/ilus/img1.png',
  'slide3': 'assets/images/ilus/img2.png',
  'slide4': 'assets/images/ilus/img3.png',
};
final List<String> keterangan = [
  'GoRide',
  'GoCar',
  'GoFood',
  'GoSend',
];

final List<String> lebelMenu = [
  'GoRide',
  'GoCar',
  'GoFood',
  'GoSend',
  'GoMart',
  'GoPulsa',
  'GoClub',
  'Lainnya',
];
