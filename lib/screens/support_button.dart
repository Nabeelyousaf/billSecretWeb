import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatbill/utils/color_constant.dart';

import '../widgets/customButton.dart';

// ignore: must_be_immutable
class SupportScreen extends StatefulWidget {
  bool isSupportScreen = false;
  SupportScreen({Key? key, required this.isSupportScreen}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  late SharedPreferences preferences;
  String? amazon1;
  String? amazon2;
  String? amazon3;
  String? amazon4;
  String? walmart1;
  String? walmart2;
  String? walmart3;
  String? walmart4;
  String? target1;
  String? target2;
  String? target3;
  String? target4;
  TextEditingController amazonlink1 = TextEditingController();
  TextEditingController amazonlink2 = TextEditingController();
  TextEditingController amazonlink3 = TextEditingController();
  TextEditingController amazonlink4 = TextEditingController();
  TextEditingController walmartlink1 = TextEditingController();
  TextEditingController walmartlink2 = TextEditingController();
  TextEditingController walmartlink3 = TextEditingController();
  TextEditingController walmartlink4 = TextEditingController();
  TextEditingController targetlink1 = TextEditingController();
  TextEditingController targetlink2 = TextEditingController();
  TextEditingController targetlink3 = TextEditingController();
  TextEditingController targetlink4 = TextEditingController();

  getdata() async {
    preferences = await SharedPreferences.getInstance();
    amazon1 = preferences.getString("amazon1");
    amazon2 = preferences.getString("amazon2");
    amazon3 = preferences.getString("amazon3");
    amazon4 = preferences.getString("amazon4");
    target1 = preferences.getString("target1");
    target2 = preferences.getString("target2");
    target3 = preferences.getString("target3");
    target4 = preferences.getString("target4");
    walmart1 = preferences.getString("walmart1");
    walmart2 = preferences.getString("walmart2");
    walmart3 = preferences.getString("walmart3");
    walmart4 = preferences.getString("walmart4");
    if (amazon1 != null) amazonlink1.text = amazon1!;
    if (amazon2 != null) amazonlink2.text = amazon2!;
    if (amazon3 != null) amazonlink3.text = amazon3!;
    if (amazon4 != null) amazonlink4.text = amazon4!;
    if (walmart1 != null) walmartlink1.text = walmart1!;
    if (walmart2 != null) walmartlink2.text = walmart2!;
    if (walmart3 != null) walmartlink3.text = walmart3!;
    if (walmart4 != null) walmartlink4.text = walmart4!;
    if (target1 != null) targetlink1.text = target1!;
    if (target2 != null) targetlink2.text = target2!;
    if (target3 != null) targetlink3.text = target3!;
    if (target4 != null) targetlink4.text = target4!;
    setState(() {});
  }

  @override
  void initState() {
    getdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          backgroundColor: AppColor.kprimeryColor,
          title: widget.isSupportScreen == true
              ? const Text(
                  "Support",
                  style: TextStyle(
                    color: Colors.black,
                    // fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )
              : const Text(
                  "Charity",
                  style: TextStyle(
                    color: Colors.black,
                    // fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Amazon",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color:
                                amazon1 != null ? Colors.yellow : Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          controller: amazonlink1,
                          decoration: const InputDecoration(
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              hintText: "Amazon link",
                              contentPadding: EdgeInsets.all(8)),
                          enabled: amazon1 != null ? false : true,
                        ),
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Amazon link",
                              contentPadding: EdgeInsets.all(8)),
                          controller: amazonlink2,
                        ),
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Amazon link",
                              contentPadding: EdgeInsets.all(8)),
                          controller: amazonlink3,
                        ),
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                            controller: amazonlink4,
                            decoration: const InputDecoration(
                                hintText: "Amazon link",
                                contentPadding: EdgeInsets.all(8))),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "Save",
                    onTap: () async {
                      preferences = await SharedPreferences.getInstance();
                      if (amazonlink1.text.isNotEmpty) {
                        if (amazon1 != amazonlink1.text) {
                          preferences.setString("amazon1", amazonlink1.text);
                          linkSave();
                          getdata();
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (amazonlink2.text.isNotEmpty) {
                        if (amazon2 != amazonlink2.text) {
                          preferences.setString("amazon2", amazonlink2.text);
                          linkSave();
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (amazonlink3.text.isNotEmpty) {
                        if (amazon3 != amazonlink3.text) {
                          preferences.setString("amazon3", amazonlink3.text);
                          linkSave();
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (amazonlink4.text.isNotEmpty) {
                        if (amazon4 != amazonlink4.text) {
                          preferences.setString("amazon4", amazonlink4.text);
                          linkSave();
                          FocusScope.of(context).unfocus();
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Walmart",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color:
                                walmart1 != null ? Colors.yellow : Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        // ignore: sort_child_properties_last
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "walmart Affliate link",
                              contentPadding: EdgeInsets.all(8)),
                          controller: walmartlink1,
                          enabled: walmart1 != null ? false : true,
                        ),
                        height: 50,
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "walmart Affliate link",
                              contentPadding: EdgeInsets.all(8)),
                          controller: walmartlink2,
                        ),
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          controller: walmartlink3,
                          decoration: const InputDecoration(
                              hintText: "walmart Affliate link",
                              contentPadding: EdgeInsets.all(8)),
                        ),
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          controller: walmartlink4,
                          decoration: const InputDecoration(
                              hintText: "walmart Affliate link",
                              contentPadding: EdgeInsets.all(8)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "Save",
                    onTap: () async {
                      preferences = await SharedPreferences.getInstance();
                      if (walmartlink1.text.isNotEmpty) {
                        if (walmart1 != walmartlink1.text) {
                          preferences.setString("walmart1", walmartlink1.text);
                          linkSave();
                          getdata();
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (walmartlink2.text.isNotEmpty) {
                        if (walmart2 != walmartlink2.text) {
                          preferences.setString("walmart2", walmartlink2.text);
                          linkSave();
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (walmartlink3.text.isNotEmpty) {
                        if (walmart3 != walmartlink3.text) {
                          preferences.setString("walmart3", walmartlink3.text);
                          linkSave();
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (walmartlink4.text.isNotEmpty) {
                        if (walmart4 != amazonlink4.text) {
                          preferences.setString("walmart4", walmartlink4.text);
                          linkSave();
                          FocusScope.of(context).unfocus();
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Target",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color:
                                target1 != null ? Colors.yellow : Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          decoration: const InputDecoration(
                              hintText: "Target Affliate link",
                              contentPadding: EdgeInsets.all(8)),
                          enabled: target1 != null ? false : true,
                          controller: targetlink1,
                        ),
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          controller: targetlink2,
                          decoration: const InputDecoration(
                              hintText: "Target Affliate link",
                              contentPadding: EdgeInsets.all(8)),
                        ),
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          controller: targetlink3,
                          decoration: const InputDecoration(
                              hintText: "Target Affliate link",
                              contentPadding: EdgeInsets.all(8)),
                        ),
                      ),
                      Container(
                        width: width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black,
                            )),
                        height: 50,
                        child: TextFormField(
                          controller: targetlink4,
                          decoration: const InputDecoration(
                              hintText: "Target Affliate link",
                              contentPadding: EdgeInsets.all(8)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomButton(
                    text: "Save",
                    onTap: () async {
                      preferences = await SharedPreferences.getInstance();
                      if (targetlink1.text.isNotEmpty) {
                        if (target1 != targetlink1.text) {
                          preferences.setString("target1", targetlink1.text);
                          linkSave();
                          getdata();
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (targetlink2.text.isNotEmpty) {
                        if (target2 != targetlink2.text) {
                          preferences.setString("target2", targetlink2.text);
                          linkSave();
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (targetlink2.text.isNotEmpty) {
                        if (target2 != targetlink2.text) {
                          preferences.setString("target3", targetlink2.text);
                          linkSave();
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (targetlink4.text.isNotEmpty) {
                        if (target4 != targetlink4.text) {
                          preferences.setString("target4", targetlink4.text);
                          linkSave();
                          FocusScope.of(context).unfocus();
                        }
                      }
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void linkSave() {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Link Save"),
    ));
  }
}
