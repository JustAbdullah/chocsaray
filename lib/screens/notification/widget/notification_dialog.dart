import 'package:flutter/material.dart';
import 'package:chocsarayi/data/model/response/notification_model.dart';
import 'package:chocsarayi/utill/color_resources.dart';
import 'package:chocsarayi/utill/dimensions.dart';
import 'package:chocsarayi/utill/styles.dart';

class NotificationDialog extends StatelessWidget {
  final NotificationModel notificationModel;
  NotificationDialog({required this.notificationModel});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),

          Container(
            height: 150, width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_LARGE),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Theme.of(context).primaryColor.withOpacity(0.20)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                notificationModel.image!,
                height: 150, width: MediaQuery.of(context).size.width, fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: Dimensions.PADDING_SIZE_LARGE),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_LARGE),
            child: Text(
              notificationModel.title!,
              textAlign: TextAlign.center,
              style: rubikMedium.copyWith(
                color: Theme.of(context).primaryColor,
                fontSize: Dimensions.FONT_SIZE_LARGE,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Text(
              notificationModel.description!,
              textAlign: TextAlign.center,
              style: rubikRegular.copyWith(
                color: ColorResources.getGreyBunkerColor(context).withOpacity(.75),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
