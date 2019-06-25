import 'package:flutter/material.dart';
// import 'package:my_first/asset/1024.png';
class Post {
   Post({
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


  bool   selected = false;
}


final List<Post> posts = [
  Post(
    title: '我的老',
    details: '住在这个屯,',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ),
   Post(
    title: '我老家',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/the-old-fashioned.png',
    price: '土生土长的人啊，大加到我家里去喝酒啊，就管够，肉要足，都是好兄弟',
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
    title: '我的老家哈哈',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/the-old-fashioned.png',
    price: '土生土长的人',
    exPress: '100.00'
   ),
    Post(
    title: '我的老家A',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ),
  Post(
    title: '我的老家MCXS',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ), 
  Post(
    title: '我的老家MEIyouHO LHOH',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ),
    Post(
    title: '我的老家MCXSUHOO',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ), 
  Post(
    title: '我的老家MEIyouHO LHOHdfa;jfa',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ),
    Post(
    title: '我的老家MCXSHUIWHOSDDLDFFLF',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  ), 
  Post(
    title: '我的老家MEIyouHO LHOHHDFHHISDHDHHDDH',
    details: '住在这个屯',
    icon: 'https://resources.ninghao.org/images/candy-shop.jpg',
    price: '土生土长的人',
    exPress: '100.00'
  )
];