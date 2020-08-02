import 'package:flutter/material.dart';
class Catelogy {
  final int id;
  final String content;
  final Color color;
  const Catelogy ({
    @required this.id,
    @required this.content,
    this.color});
}