import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:whatbill/screens/platForm_select_screen.dart';
import 'package:whatbill/screens/promote_product_screen.dart';
import 'package:whatbill/screens/set_up_setting_button.dart';
import 'package:whatbill/screens/share_app_screen.dart';
import 'package:whatbill/screens/strategy_guid_screen.dart';
import 'package:whatbill/screens/support_button.dart';
import '../Api_helper/ad_helper.dart';
import '../utils/color_constant.dart';
import 'explanation_screen.dart';
import 'get_affliaiate_links_screen.dart';
import 'get_started_screen.dart';
import 'my_shopping_army_screen.dart';
import 'package:intl/intl.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late SharedPreferences preferences;
  String? name;
  String? email;
  bool isAmazon = true;
  bool iswelmart = false;
  bool isTarget = false;
  String myAmazonLink = "https://amzn.to/3Aq9mOj";
  String mywalmertLink = "http://walmart.com";
  String myTargetLink = "http://target.com";
  List<String> amazonLinkList = [];
  List<String> targetLinkList = [];
  List<String> walmartLinkList = [];
  int? currentindex;
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
  Uri? _url;

  late BannerAd _bottomBannerAd;
  bool isBottomBannerAdd = false;

  void _createBottomBannerAd() {
    _bottomBannerAd = BannerAd(
      adUnitId: AdHelper.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: BannerAdListener(
        onAdLoaded: (_) {
          setState(() {
            isBottomBannerAdd = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          ad.dispose();
        },
      ),
    );
    _bottomBannerAd.load();
  }

  @override
  void initState() {
    if (!kIsWeb) _createBottomBannerAd();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    getUpdateStatus();
  }

  void dispose() {
    super.dispose();
    _bottomBannerAd.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: isBottomBannerAdd
          ? Container(
              height: _bottomBannerAd.size.height.toDouble(),
              width: _bottomBannerAd.size.width.toDouble(),
              child: AdWidget(ad: _bottomBannerAd),
            )
          : null,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: SizedBox(),
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "BillSecret",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 24,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Images/AppIcon.jpeg"))),
            )
          ],
        ),
      ),
      body: Center(
        child: Container(
          // width: width * 0.7,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          name != null ? name! : "Name",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          email != null ? email! : "Email",
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Choose Platform",
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            checkBox(
                                title: "Amazon",
                                selected: isAmazon,
                                onChanged: (value) {
                                  isAmazon = value!;
                                  iswelmart = false;
                                  isTarget = false;
                                  setState(() {});
                                }),
                            checkBox(
                              title: "Walmart",
                              selected: iswelmart,
                              onChanged: (value) {
                                iswelmart = value!;
                                isAmazon = false;
                                isTarget = false;
                                setState(() {});
                              },
                            ),
                            checkBox(
                              title: "Target",
                              selected: isTarget,
                              onChanged: (value) {
                                isTarget = value!;
                                iswelmart = false;
                                isAmazon = false;
                                // preferences.setInt("index", 0);
                                setState(() {});
                              },
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GridView.builder(
                    itemCount: carddetailList.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (_, index) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomCard(
                        onTap: () async {
                          if (kIsWeb) {
                            // if (kIsWeb) {
                            if (carddetailList[index].isLink != null) {
                              if (carddetailList[index].link != null) {
                                Uri _uri =
                                    Uri.parse(carddetailList[index].link!);
                                print("Button press");
                                _launchUrl(_uri);
                              }
                            }
                            // }
                            else {
                              await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) =>
                                              carddetailList[index].screen))
                                  .then((value) {
                                print("done");
                                setState(() {});
                              });
                            }
                          } else {
                            await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (_) =>
                                            carddetailList[index].screen))
                                .then((value) {
                              print("done");
                              setState(() {});
                            });
                          }
                        },
                        title: carddetailList[index].title,
                        imagePath: carddetailList[index].icon,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: InkWell(
                  onTap: () {
                    Uri uri = Uri.parse("https://icons8.com");
                    _launchUrl(uri);
                  },
                  child: const Text(
                    "https://icons8.com",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  getUpdateStatus() async {
    preferences = await SharedPreferences.getInstance();
    String getNextMonthDate = preferences.getString("NextDate")!;
    if (getNextMonthDate == DateFormat.yMMMMEEEEd().format(DateTime.now())) {
      showCustomErrorDialog(text: "Please update your app", title: "Message");
    } else {
      print("Not need to update");
    }
  }

  showCustomErrorDialog({
    required String title,
    required String text,
  }) async {
    return showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: Text(title),
        content: Text(text),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text('OK'),
            onPressed: () async {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  Widget checkBox(
      {String? title,
      bool? selected,
      required void Function(bool?)? onChanged}) {
    return Row(
      children: [
        Checkbox(
            value: selected,
            activeColor: AppColor.kprimeryColor,
            onChanged: onChanged),
        Text(
          title!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        )
      ],
    );
  }

  final List<CardDetial> carddetailList = [
    CardDetial(
        icon: "assets/Images/icons8-commercial-100.png",
        title: "Promote Products",
        screen: PromoteProduct(),
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-shouting-100.png",
        title: "Share App",
        screen: ShareAppScreen(),
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-man-with-money-100.png",
        title: "Check Your Funds",
        // isLink: ,
        screen: PlatformSelectionScreen(
          isCheckScreen: true,
        ),
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-shopping-bag-100.png",
        title: "Buy Products",
        // isbuyProduct: true,
        screen: PlatformSelectionScreen(
          isCheckScreen: false,
        ),
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-organization-chart-people-100.png",
        title: "My Shopping Army",
        screen: const MyShoppingArmy(),
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-helping-100.png",
        title: "Support",
        screen: SupportScreen(
          isSupportScreen: true,
        ),
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-flipboard-100.png",
        title: "App Explanation",
        link: "https://youtu.be/YCOMp00a4f0",
        isLink: true,
        screen: CustomVideoPlayer(
          url: 'https://youtu.be/YCOMp00a4f0',
        ),
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-to-do-100.png",
        title: "Getting Started",
        screen: const GettingStarted(),
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-ratings-100.png",
        title: "Strategy Guide",
        screen: Container(),
        isLink: true,
        link: "https://sites.google.com/view/billsecret-strategy-guide/home",
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-charity-100.png",
        title: "Charity",
        screen: SupportScreen(
          isSupportScreen: false,
        ),
        route: ""),
    CardDetial(
        icon: "assets/Images/icons8-tasks-100.png",
        title: "Set Up Settings",
        screen: SetUPSettingScreen(),
        route: ""),
    CardDetial(
        icon: "assets/Images/internet.png",
        title: "Get Affiliate Links",
        screen: const GetAffliateLInk(),
        route: ""),
  ];
}

Future<void> _launchUrl(Uri _url) async {
  if (!await launchUrl(_url)) {
    throw 'Could not launch $_url';
  }
}

class CustomCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final void Function()? onTap;
  const CustomCard({
    required this.onTap,
    required this.imagePath,
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Color(0xff80cbc4),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                offset: const Offset(0, 1),
                blurRadius: 1,
                spreadRadius: 0.3,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 70,
              width: 70,
              child: Image.asset(
                imagePath,
                // color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardDetial {
  String title = '';
  String route = '';
  String icon = '';
  String? link;
  Widget screen;
  bool? isLink;
  bool? isbuyProduct;

  CardDetial({
    required this.screen,
    this.isLink,
    this.isbuyProduct,
    this.link,
    required this.icon,
    required this.route,
    required this.title,
  });
}
