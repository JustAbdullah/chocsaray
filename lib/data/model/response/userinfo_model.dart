class UserInfoModel {
  late int id;
  late String fName;
  late String lName;
  late String email;
  late String image;
  late int isPhoneVerified;
  late String emailVerifiedAt;
  late String createdAt;
  late String updatedAt;
  late String emailVerificationToken;
  late String phone;
  late String cmFirebaseToken;

  UserInfoModel(
      {this.id=0,
        this.fName='',
        this.lName='',
        this.email='',
        this.image='',
        this.isPhoneVerified=0,
        this.emailVerifiedAt='',
        this.createdAt='',
        this.updatedAt='',
        this.emailVerificationToken='',
        this.phone='',
        this.cmFirebaseToken=''});

  UserInfoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fName = json['f_name'];
    lName = json['l_name'];
    email = json['email'];
    image = json['image'];
    isPhoneVerified = json['is_phone_verified'];
    emailVerifiedAt = json['email_verified_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    emailVerificationToken = json['email_verification_token'];
    phone = json['phone'];
    cmFirebaseToken = json['cm_firebase_token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['f_name'] = this.fName;
    data['l_name'] = this.lName;
    data['email'] = this.email;
    data['image'] = this.image;
    data['is_phone_verified'] = this.isPhoneVerified;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['email_verification_token'] = this.emailVerificationToken;
    data['phone'] = this.phone;
    data['cm_firebase_token'] = this.cmFirebaseToken;
    return data;
  }
}
