import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:whatbill/screens/promote_product_screen.dart';
import 'package:whatbill/utils/color_constant.dart';
import 'package:whatbill/widgets/customButton.dart';

class SetUPSettingScreen extends StatefulWidget {
  const SetUPSettingScreen({Key? key}) : super(key: key);

  @override
  State<SetUPSettingScreen> createState() => _SetUPSettingScreenState();
}

class _SetUPSettingScreenState extends State<SetUPSettingScreen> {
  String? email;
  String? name;
  String? amazon;
  String? walmart;
  String? target;
  String? amazonLink;
  String? walmartLink;
  String? targetLink;
  late SharedPreferences sharedPreferences;
  late TextEditingController controller = TextEditingController();
  late TextEditingController emailcontroller = TextEditingController();
  late TextEditingController amazonMessage = TextEditingController();
  late TextEditingController walmartMessage = TextEditingController();
  late TextEditingController targetMessage = TextEditingController();

  late TextEditingController amazonAffliateLink = TextEditingController();
  late TextEditingController walmartAffliateLink = TextEditingController();
  late TextEditingController targetAffliateLink = TextEditingController();
  @override
  void initState() {
    getStings();
    super.initState();
  }

  void getStings() async {
    sharedPreferences = await SharedPreferences.getInstance();
    email = sharedPreferences.getString("email");
    name = sharedPreferences.getString("name");
    amazon = sharedPreferences.getString("amazon");
    walmart = sharedPreferences.getString("walmart");
    target = sharedPreferences.getString("target");
    amazonLink = sharedPreferences.getString("amazonlink");
    walmartLink = sharedPreferences.getString("walmartLink");
    targetLink = sharedPreferences.getString("targetLink");

    if (email != null) emailcontroller.text = email!;
    if (name != null) controller.text = name!;
    if (amazon != null) amazonMessage.text = amazon!;
    if (walmart != null) walmartMessage.text = walmart!;
    if (target != null) targetMessage.text = target!;
    if (amazonLink != null) amazonAffliateLink.text = amazonLink!;
    if (targetLink != null) targetAffliateLink.text = targetLink!;
    if (walmartLink != null) walmartAffliateLink.text = walmartLink!;
    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.kprimeryColor,
        title: const Text(
          "Set up Setting",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context, true);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "User information",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: "Enter Name",
                  ),
                  controller: controller,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: TextFormField(
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(8),
                    hintText: "Enter Email",
                  ),
                  controller: emailcontroller,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Save",
                onTap: () async {
                  sharedPreferences = await SharedPreferences.getInstance();
                  if (emailcontroller.text.isNotEmpty) {
                    await sharedPreferences.setString(
                        "email", emailcontroller.text);
                    linkSave("Email Save");
                    // ignore: use_build_context_synchronously
                    FocusScope.of(context).unfocus();
                  }
                  if (controller.text.isNotEmpty) {
                    await sharedPreferences.setString("name", controller.text);
                    linkSave("Name Save");
                    // ignore: use_build_context_synchronously
                    FocusScope.of(context).unfocus();
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Affliate Link",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTile(
                title: "Amazon",
                controller: amazonAffliateLink,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTile(
                title: "Walmart",
                controller: walmartAffliateLink,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTile(
                title: "Target",
                controller: targetAffliateLink,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: "Save Link",
                    onTap: () async {
                      sharedPreferences = await SharedPreferences.getInstance();
                      if (walmartAffliateLink.text.isNotEmpty) {
                        if (walmartAffliateLink.text != walmartLink) {
                          await sharedPreferences.setString(
                              "walmartLink", walmartAffliateLink.text);
                          linkSave("Link save");
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (amazonAffliateLink.text.isNotEmpty) {
                        if (amazonAffliateLink.text != amazonLink) {
                          await sharedPreferences.setString(
                              "amazonlink", amazonAffliateLink.text);
                          linkSave("Link save");
                          FocusScope.of(context).unfocus();
                        }
                      }
                      if (targetAffliateLink.text.isNotEmpty) {
                        if (targetAffliateLink.text != targetLink) {
                          await sharedPreferences.setString(
                              "targetLink", targetAffliateLink.text);
                          linkSave("Link save");
                          FocusScope.of(context).unfocus();
                        }
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomHeading(title: "Amazon"),
              const SizedBox(
                height: 10,
              ),
              CustomMessageBox(
                controller: amazonMessage,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: "Save",
                    onTap: () async {
                      sharedPreferences = await SharedPreferences.getInstance();
                      if (amazonMessage.text.isNotEmpty) {
                        await sharedPreferences.setString(
                            "amazon", amazonMessage.text);
                        linkSave("message save");
                        FocusScope.of(context).unfocus();
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                height: 20,
              ),
              const CustomHeading(title: "Walmart"),
              const SizedBox(
                height: 10,
              ),
              CustomMessageBox(
                controller: walmartMessage,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: "Save",
                    onTap: () async {
                      sharedPreferences = await SharedPreferences.getInstance();
                      if (walmartMessage.text.isNotEmpty) {
                        await sharedPreferences.setString(
                            "walmart", walmartMessage.text);
                        linkSave("message save");
                        FocusScope.of(context).unfocus();
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const CustomHeading(title: "Target"),
              const SizedBox(
                height: 10,
              ),
              CustomMessageBox(
                controller: targetMessage,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomButton(
                    text: "Save",
                    onTap: () async {
                      sharedPreferences = await SharedPreferences.getInstance();
                      if (targetMessage.text.isNotEmpty) {
                        await sharedPreferences.setString(
                            "target", targetMessage.text);
                        FocusScope.of(context).unfocus();
                        linkSave("message save");
                      }
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
            ],
          ),
        ),
      ),
    );
  }

  void linkSave(String text) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(text),
    ));
  }
}

class CustomMessageBox extends StatelessWidget {
  TextEditingController controller;
  CustomMessageBox({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      child: TextFormField(
        controller: controller,
        maxLines: 6,
      ),
    );
  }
}

class CustomTile extends StatelessWidget {
  final String title;
  final TextEditingController controller;

  const CustomTile({
    required this.controller,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomContainer(
          title: title,
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(border: Border.all(color: Colors.black)),
          width: MediaQuery.of(context).size.width - 180,
          child: TextFormField(
            controller: controller,
          ),
        )
      ],
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String title;

  const CustomContainer({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 120,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black,
        ),
      ),
      // ignore: prefer_const_constructors
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
