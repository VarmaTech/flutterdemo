import 'dart:core';

class DataObj{
  final int page;
  final int per_page;
  final int total;
  final int total_pages;
  final List<Data> data;

  DataObj(this.page, this.per_page, this.total, this.total_pages, this.data);


}

class Data {
  final int id;
  final String email;
  final String first_name;
  final String last_name;
  final String avatar;

  Data(this.id, this.email, this.first_name, this.last_name, this.avatar);


}
class ListInfo {
  final String title;
  final String subtile;

  ListInfo(this.title, this.subtile);


}