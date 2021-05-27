import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_theme.dart';

abstract class AppTextStyles {
  TextStyle get title;
  TextStyle get button;
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
}
