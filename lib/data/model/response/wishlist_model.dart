class WishListModel {
  late int id;
  late int userId;
  late int productId;
  late String createdAt;
  late String updatedAt;

  WishListModel(
      {this.id=0, this.userId=0, this.productId=0, this.createdAt='', this.updatedAt=''});

  WishListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    productId = json['product_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['product_id'] = this.productId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
