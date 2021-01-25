import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    Key key,
  }) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String value = "0";

  void addValue(String newValue) {
    setState(() {
      if (value == "0") {
        value = newValue;
      } else {
        value = value + newValue;
      }
    });
  }

  void deleteValue() {
    setState(() {
      if (value != "0") {
        value = value.substring(0, value.length - 1);
      }
      if (value.isEmpty) {
        value = "0";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: [
                  Container(
                    height: 25,
                    width: 25,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/images/dp.png",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Container(
                        height: 30,
                        width: 117,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Color(0xffFBFBFB),
                        ),
                        child: Center(
                          child: Text(
                            "N5,000 left",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Column(
                  children: [
                    Text(
                      "\$$value",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      "Add a memo",
                      style: TextStyle(
                        color: Color(0xffCCCCCC),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ItemButton(
                          item: "1",
                          onpress: () {
                            addValue("1");
                          },
                        ),
                        ItemButton(
                            item: "2",
                            onpress: () {
                              addValue("2");
                            }),
                        ItemButton(
                            item: "3",
                            onpress: () {
                              addValue("3");
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ItemButton(
                            item: "4",
                            onpress: () {
                              addValue("4");
                            }),
                        ItemButton(
                            item: "5",
                            onpress: () {
                              addValue("5");
                            }),
                        ItemButton(
                            item: "6",
                            onpress: () {
                              addValue("6");
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ItemButton(
                            item: "7",
                            onpress: () {
                              addValue("7");
                            }),
                        ItemButton(
                            item: "8",
                            onpress: () {
                              addValue("8");
                            }),
                        ItemButton(
                            item: "9",
                            onpress: () {
                              addValue("9");
                            }),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ItemButton(
                            item: ".",
                            onpress: () {
                              addValue(".");
                            }),
                        ItemButton(
                            item: "0",
                            onpress: () {
                              addValue("0");
                            }),
                        ItemButton(
                            item: "<",
                            onpress: () {
                              deleteValue();
                            }),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 46,
                    width: 145,
                    decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Debit",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 46,
                    width: 145,
                    decoration: BoxDecoration(
                      color: Color(0xffF9F9F9),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Center(
                      child: Text(
                        "Credit",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ItemButton extends StatelessWidget {
  final String item;
  final Function onpress;
  const ItemButton({
    Key key,
    @required this.item,
    @required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap: onpress,
      child: Center(
        child: Text(
          item,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
