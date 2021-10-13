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

  TextStyle get stepperIndicatorPrimary;
  TextStyle get stepperIndicatorSecondary;

  TextStyle get stepperNextButton;
  TextStyle get stepperNextButtonDisabled;

  TextStyle get stepperTitle;
  TextStyle get stepperSubtitle;

  TextStyle get hintTextField;
  TextStyle get textField;

  TextStyle get personTileTitle;
  TextStyle get personTileSelected;
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

  @override
  TextStyle get stepperIndicatorPrimary => GoogleFonts.roboto(
      fontWeight: FontWeight.w700,
      fontSize: 14,
      color: AppTheme.colors.stepperIndicatorPrimary);

  @override
  TextStyle get stepperIndicatorSecondary => GoogleFonts.roboto(
      fontWeight: FontWeight.w400,
      fontSize: 14,
      color: AppTheme.colors.stepperIndicatorSecondary);

  @override
  TextStyle get stepperNextButton => GoogleFonts.roboto(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: AppTheme.colors.stepperNextButton);

  @override
  TextStyle get stepperSubtitle => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 24,
      color: AppTheme.colors.stepperSubtitle);

  @override
  TextStyle get stepperTitle => GoogleFonts.inter(
      fontWeight: FontWeight.w700,
      fontSize: 24,
      color: AppTheme.colors.stepperTitle);

  @override
  TextStyle get hintTextField => GoogleFonts.inter(
      fontWeight: FontWeight.w400,
      fontSize: 16,
      color: AppTheme.colors.hintTextField);

  @override
  TextStyle get textField => GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppTheme.colors.textField);

  @override
  TextStyle get stepperNextButtonDisabled => GoogleFonts.inter(
      fontWeight: FontWeight.w500,
      fontSize: 12,
      color: AppTheme.colors.stepperNextButtonDisabled);

  @override
  TextStyle get personTileSelected => GoogleFonts.inter(
      fontWeight: FontWeight.w400, fontSize: 16, color: AppTheme.colors.button);

  @override
  TextStyle get personTileTitle => GoogleFonts.inter(
      fontWeight: FontWeight.w700, fontSize: 16, color: AppTheme.colors.button);
}
