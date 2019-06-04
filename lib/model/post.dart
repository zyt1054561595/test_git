import 'package:flutter/material.dart';
// import 'package:my_first/asset/1024.png';
class Post {
  const Post({
this.title,
this.icon,
this.details,
this.price,
this.exPress,
});

final  String title;
final  String icon;
final  String details;
final  String price;
final  String exPress;
}


final List<Post> posts = [
  Post(
    title: '我的老家',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ),
   Post(
    title: '我的老家',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/the-old-fashioned.png',
    price: '土生土长的人',
    exPress: '100.00'
  ),
   Post(
    title: '我的老家',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ),
   Post(
    title: '我的老家',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/the-old-fashioned.png',
    price: '土生土长的人',
    exPress: '100.00'
   ),
    Post(
    title: '我的老家',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ),
  Post(
    title: '我的老家',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ), 
  Post(
    title: '我的老家',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  )
];