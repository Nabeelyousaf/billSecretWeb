import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_contacts/flutter_contacts.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatbill/screens/promote_product_screen.dart';
import 'package:whatbill/utils/color_constant.dart';

import '../widgets/customButton.dart';

class ShareAppScreen extends StatefulWidget {
  ShareAppScreen({Key? key}) : super(key: key);

  @override
  State<ShareAppScreen> createState() => _ShareAppScreenState();
}

class _ShareAppScreenState extends State<ShareAppScreen> {
  bool value = false;
  TextEditingController controller = TextEditingController();
  late SharedPreferences preferences;
  String? amazonLink;
  String? targetLink;
  String? walmertLink;
  List<String> _addContacts = [];
  List<Contact>? _contacts;
  bool isSelected = false;
  String message = "";
  bool _permissionDenied = false;
  void initState() {
    getData();
    if (!kIsWeb) _fetchContacts();
    super.initState();
  }

  getData() async {
    preferences = await SharedPreferences.getInstance();
    amazonLink = preferences.getString("amazonlink");
    targetLink = preferences.getString("targetLink");
    walmertLink = preferences.getString("walmartLink");
    if (amazonLink != null) message = amazonLink!;
    if (targetLink != null) message = message + " " + targetLink!;
    if (walmertLink != null) message = message + " " + walmertLink!;
    controller.text = message;
  }

  Future _fetchContacts() async {
    if (!await FlutterContacts.requestPermission(readonly: true)) {
      setState(() => _permissionDenied = true);
    } else {
      final contacts = await FlutterContacts.getContacts(
          withProperties: true, withAccounts: true, withPhoto: true);
      setState(() => _contacts = contacts);
    }
  }

  @override
  Widget build(BuildContext context) {
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
        title: const Text(
          "Share App",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: AppColor.kprimeryColor,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomHeading(
              title: "Message",
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              // height: 100,
              decoration: BoxDecoration(
                  border: Border.all(
                color: Colors.black,
                width: 1,
              )),

              child: TextFormField(
                controller: controller,
                maxLines: 10,
                decoration: const InputDecoration(
                  hintText: "Message",
                  contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
                // decoration: InputDecoration(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomHeading(
              title: "Contacts",
            ),
            const SizedBox(
              height: 20,
            ),
            if (!kIsWeb)
              _contacts != null
                  ? SizedBox(
                      height: 100,
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: _contacts!.length,
                          itemBuilder: (context, i) => Padding(
                                padding: const EdgeInsets.all(2),
                                child: SizedBox(
                                  height: 20,
                                  width: double.infinity,
                                  child: CustomCheckbox(
                                    value: isSelected,
                                    addContacts: _addContacts,
                                    phoneNumber: _contacts![i].phones.isNotEmpty
                                        ? _contacts![i].phones[0].number
                                        : "",
                                    title: _contacts!.isNotEmpty
                                        ? _contacts![i].displayName.isNotEmpty
                                            ? _contacts![i].displayName
                                            : ""
                                        : "",
                                    onChanged: (n) {
                                      setState(() {
                                        this.value = n!;
                                      });
                                    },
                                  ),
                                ),
                              )),
                    )
                  : const Center(child: CircularProgressIndicator()),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onTap: () async {
                if (controller.text.isNotEmpty) {
                  Clipboard.setData(ClipboardData(text: controller.text));
                  // showInSnackBar("Message save");
                }
              },
              text: "Copy Message",
            ),
            const SizedBox(
              height: 20,
            ),
            const CustomHeading(
              title: "Share",
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(
                  text: "Facebook",
                  onTap: () async {
                    Uri _uri = Uri.parse("https://www.facebook.com");
                    await _launchUrl(_uri);
                  },
                ),
                CustomButton(
                  text: "Insatgram",
                  onTap: () async {
                    Uri _uri = Uri.parse("https://www.instagram.com/");
                    await _launchUrl(_uri);
                  },
                ),
                CustomButton(
                  text: "Twitter",
                  onTap: () async {
                    Uri _uri = Uri.parse("https://twitter.com");
                    await _launchUrl(_uri);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void showInSnackBar(String value) {
    Scaffold.of(context).showSnackBar(new SnackBar(content: new Text(value)));
  }

  _sendSMS({String? message, List<String>? recipents}) async {
    String result = await sendSMS(message: message!, recipients: recipents!)
        .catchError((onError) {
      print(onError);
    });
    print(result);
  }

  Future<void> _launchUrl(Uri _url) async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }
}
