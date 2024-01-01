import 'package:flutter/material.dart';
class Hash {
  String name;
  String username;
  String hash;
  int comments;
  int shares;
  int likes;
  int views;
  String time;

  Hash({
    required this.name,
    required this.username,
    required this.hash,
    required this.comments,
    required this.shares,
    required this.likes,
    required this.views,
    required this.time
  });
}

final List<Hash> hashs = [
Hash(
    name: "Ayush Ranjan",
    username: "ayuuu",
    hash: "#MemoryRevived about to be done, an app for dementia caregivers. Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum",
    comments: 2000,
    shares: 10,
    likes: 10000,
    views:500000,
    time: "1h",
),
  Hash(
    name: "Ayush Ranjan",
    username: "ayuuu",
    hash: "#MemoryRevived about to be done, an app for dementia caregivers.",
    comments: 2000,
    shares: 10,
    likes: 10000,
    views:500000,
    time: "2h",
  ),
  Hash(
    name: "Ayush Ranjan",
    username: "ayuuu",
    hash: "#MemoryRevived about to be done, an app for dementia caregivers.",
    comments: 2000,
    shares: 10,
    likes: 10000,
    views:500000,
    time: "5h",
  ),
  Hash(
    name: "Ayush Ranjan",
    username: "ayuuu",
    hash: "#MemoryRevived about to be done, an app for dementia caregivers.",
    comments: 2000,
    shares: 10,
    likes: 10000,
    views:500000,
    time: "7h",
  ),
  Hash(
    name: "Ayush Ranjan",
    username: "ayuuu",
    hash: "#MemoryRevived about to be done, an app for dementia caregivers.",
    comments: 2000,
    shares: 10,
    likes: 10000,
    views:500000,
    time: "9h",
  ),
];