import 'package:barber_shop_app/src/shared/widgets/barber_button.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_calendar.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_colors.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_expansion_item.dart';
import 'package:barber_shop_app/src/shared/widgets/barber_expansion_tile.dart';
import 'package:flutter/material.dart';
import 'package:groovin_widgets/groovin_expansion_tile.dart';
import 'package:table_calendar/table_calendar.dart';

class Agendamento extends StatelessWidget {
  PageController pageController;
  CalendarController _calendarController;
  Agendamento(this.pageController, this._calendarController);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: BarberColors.background,
      child: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30, bottom: 20),
                      child: Text(
                        "AGENDE O SEU HORÁRIO",
                        style: TextStyle(
                          color: BarberColors.golden,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    BarberExpansionTile(),
                    BarberExpansionTile(),
                    BarberCalendar(_calendarController),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: BarberExpansionTile(),
                    ),
                  ],
                ),
              ),
            ),
          ),
          BarberButton(
            text: Text(
              "CONTINUAR",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            margin: EdgeInsets.only(bottom: 30, left: 40, right: 40),
            onPressed: () {
              pageController.jumpToPage(4);
            },
            color: BarberColors.golden,
          ),
        ],
      ),
    );
  }
}
