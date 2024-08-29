import 'package:flutter/cupertino.dart';
import 'package:travel_app/core/utlis/size_config.dart';

abstract class AppStyles{
  static TextStyle styleSemiBold24(context){
    return TextStyle(
      fontSize: getResponsiveFontSize(context, 24),
    );
  }

}

double getResponsiveFontSize(context, double font){
  double scaleFactor = getScaleFactore(context);
  double lowerLimit = 0.8;
  double upperLimit = 1.2;
  double responsiveFontSize = font / scaleFactor;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactore(context) {
  double width = MediaQuery.sizeOf(context).width;
  if(width <= 600){
    return width / SizeConfig.mobileBreakPoint;
  }else if( width <= 900){
    return width / SizeConfig.tabletBreakPoint;
  }else {
    return width / SizeConfig.desktopBreakPoint;
  }
}