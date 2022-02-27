import 'package:flutter/material.dart';
import 'package:google_clone/language_text.dart';

class TranslationButtons extends StatelessWidget {
  const TranslationButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: const [
        Text('Google offered in:'),
        SizedBox(width: 6),
        LanguageText(title: 'हिन्दी'),
        SizedBox(width: 6),
        LanguageText(title: 'বাংলা'),
        SizedBox(width: 6),
        LanguageText(title: 'తెలుగు'),
        SizedBox(width: 6),
        LanguageText(title: 'मराठी'),
        SizedBox(width: 6),
        LanguageText(title: 'தமிழ்'),
        SizedBox(width: 6),
        LanguageText(title: 'ગુજરાતી'),
        SizedBox(width: 6),
        LanguageText(title: 'ಕನ್ನಡ'),
        SizedBox(width: 6),
        LanguageText(title: 'മലയാളം'),
        SizedBox(width: 6),
        LanguageText(title: 'ਪੰਜਾਬੀ'),
      ],
    );
  }
}
