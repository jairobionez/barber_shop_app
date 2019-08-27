import 'package:barber_shop_app/widgets/barber_drawer.dart';
import 'package:flutter/material.dart';

class ConfirmarAgendamento extends StatelessWidget {
  PageController pageController;
  ConfirmarAgendamento(this.pageController);

  _btnConfirmAgenda(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        bottom: 30,
      ),
      alignment: Alignment.center,
      child: RaisedButton(
          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
          color: Color.fromRGBO(194, 155, 79, 1),
          onPressed: () {},
          child: Text(
            "CONFIRMAR AGENDAMENTO",
            style: TextStyle(color: Colors.white, fontSize: 16),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        pageController.jumpToPage(0);
        return false;
      },
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 30, bottom: 60),
            child: Text(
              "CONFIRME SEU AGENDAMENTO",
              style: TextStyle(
                color: Color.fromRGBO(194, 155, 79, 1),
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: (MediaQuery.of(context).size.width * 0.1),
                      ),
                      alignment: Alignment.topRight,
                      child: Text(
                        "Profissional\n"
                        "Serviço\n"
                        "Data\n"
                        "Horário\n"
                        "Valor",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          right: (MediaQuery.of(context).size.width * 0.1)),
                      child: Text(
                        "valueeeee\n"
                        "valueee\n"
                        "valueeeeeeeee\n"
                        "valuee\n"
                        "valueeeeeee",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          color: Colors.grey[700],
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          _btnConfirmAgenda(context)
        ],
      ),
    );
  }
}
