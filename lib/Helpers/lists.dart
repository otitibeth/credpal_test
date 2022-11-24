import 'package:credpal_test/Helpers/app_colors.dart';
import 'package:credpal_test/models/merchants_model.dart';
import 'package:credpal_test/models/product_model.dart';

List<Merchant> merchants = [
  Merchant(name: 'Justrite', logo: 'assets/images/justrite.png', online: true),
  Merchant(
      name: 'Orile Restaurant', logo: 'assets/images/orile.png', online: true),
  Merchant(name: 'Slot', logo: 'assets/images/slot.png', online: true),
  Merchant(name: 'Pointek', logo: 'assets/images/pointek.png', online: true),
  Merchant(
      name: 'ogabassey', logo: 'assets/images/ogabassey.png', online: true),
  Merchant(
      name: 'Casper Stores',
      logo: 'assets/images/casper.png',
      color: Pallete.casper,
      online: false),
  Merchant(
      name: 'Dreamworks', logo: 'assets/images/dreamworks.png', online: false),
  Merchant(name: 'Hubmart', logo: 'assets/images/hubmart.png', online: true),
  Merchant(name: 'Just Used', logo: 'assets/images/justused.png', online: true),
  Merchant(
      name: 'Just fones', logo: 'assets/images/justFones.png', online: true),
];

List<Product> products = [
  Product(
      image: 'assets/images/nokiaG20.png',
      amount: 39780,
      productName: 'Nokia G20',
      sellerLogo: 'assets/svg/Pay40.svg',
      strikedAmount: 88000),
  Product(
      image: 'assets/images/ankerSound.png',
      amount: 39780,
      productName: 'Anker Soundcore Flare 2',
      sellerLogo: 'assets/svg/OkayFones1.svg',
      strikedAmount: 88000),
  Product(
      image: 'assets/images/iPhoneXsmax.png',
      amount: 295999,
      productName: 'iPhone XS Max 4GB, 256GB',
      sellerLogo: 'assets/svg/ogabassey1.svg',
      strikedAmount: 315000),
  Product(
      image: 'assets/images/iphone12.png',
      amount: 490500,
      productName: 'iPhone 12 Pro',
      sellerLogo: 'assets/svg/IMateStores1.svg',
      strikedAmount: 515000),
  Product(
      image: 'assets/images/nokiaG20.png',
      amount: 39780,
      productName: 'Nokia G20',
      sellerLogo: 'assets/svg/Pay40.svg',
      strikedAmount: 88000),
  Product(
      image: 'assets/images/iPhoneXsmax.png',
      amount: 295999,
      productName: 'iPhone XS Max 4GB, 256GB',
      sellerLogo: 'assets/svg/ogabassey1.svg',
      strikedAmount: 315000),
  Product(
      image: 'assets/images/ankerSound.png',
      amount: 39780,
      productName: 'Anker Soundcore Flare 2',
      sellerLogo: 'assets/svg/OkayFones1.svg',
      strikedAmount: 88000),
  Product(
      image: 'assets/images/iphone12.png',
      amount: 490500,
      productName: 'iPhone 12 Pro',
      sellerLogo: 'assets/svg/IMateStores1.svg',
      strikedAmount: 515000),
];
