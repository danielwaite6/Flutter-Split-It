import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
  TextStyle get infoCardTitle;
  TextStyle get infoCardSubTitle1;
  TextStyle get infoCardSubTitle2;
  TextStyle get appBar;

  TextStyle get eventTileTitle;
  TextStyle get eventTileSubtitle;
  TextStyle get eventTileMoney;
  TextStyle get eventTilePeople;
}

class AppTextStylesDefault implements AppTextStyles {
  @override
  TextStyle get button => GoogleFonts.inter(
        fontSize: 16,
        color: AppTheme.colors.button,
        fontWeight: FontWeight.w400,
      );

  @override
  TextStyle get title => GoogleFonts.bigShouldersDisplay(
        fontSize: 40,
        color: AppTheme.colors.title,
      );

  @override
  TextStyle get appBar => GoogleFonts.montserrat(
        fontWeight: FontWeight.w700,
        fontSize: 24,
        color: AppTheme.colors.titleAppBar,
      );

  @override
  TextStyle get infoCardTitle => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppTheme.colors.infoCardTitle);

  @override
  TextStyle get infoCardSubTitle1 => GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: AppTheme.colors.infoCardSubTitle1);

  @override
  TextStyle get infoCardSubTitle2 => GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: 20,
      color: AppTheme.colors.infoCardSubTitle2);

  @override
  TextStyle get eventTileMoney => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppTheme.colors.eventTileMoney);

  @override
  TextStyle get eventTilePeople => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: AppTheme.colors.eventTilePeople);

  @override
  TextStyle get eventTileSubtitle => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 12,
      color: AppTheme.colors.eventTileSubtitle);

  @override
  TextStyle get eventTileTitle => GoogleFonts.inter(
      fontWeight: FontWeight.w600,
      fontSize: 16,
      color: AppTheme.colors.eventTileTitle);
}
