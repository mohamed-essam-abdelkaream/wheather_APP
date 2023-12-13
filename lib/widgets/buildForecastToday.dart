import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildForecastToday(String time, int temp, int wind, int rainChance,
    IconData weatherIcon, size, bool isDarkMode) {
  return Padding(
    padding: EdgeInsets.all(size.width * 0.025),
    child: Column(
      children: [
        Text(
          time,
          style: GoogleFonts.questrial(
            color: isDarkMode ? Colors.white : Colors.black,
            fontSize: size.height * 0.02,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.005,
              ),
              child: FaIcon(
                weatherIcon,
                color: isDarkMode ? Colors.white : Colors.black,
                size: size.height * 0.03,
              ),
            ),
          ],
        ),
        Text(
          '$temp˚C',
          style: GoogleFonts.questrial(
            color: isDarkMode ? Colors.white : Colors.black,
            fontSize: size.height * 0.025,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.01,
              ),
              child: FaIcon(
                FontAwesomeIcons.wind,
                color: Colors.grey,
                size: size.height * 0.03,
              ),
            ),
          ],
        ),
        Text(
          '$wind km/h',
          style: GoogleFonts.questrial(
            color: Colors.grey,
            fontSize: size.height * 0.02,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: size.height * 0.01,
              ),
              child: FaIcon(
                FontAwesomeIcons.umbrella,
                color: Colors.blue,
                size: size.height * 0.03,
              ),
            ),
          ],
        ),
        Text(
          '$rainChance %',
          style: GoogleFonts.questrial(
            color: Colors.blue,
            fontSize: size.height * 0.02,
          ),
        ),
      ],
    ),
  );
}