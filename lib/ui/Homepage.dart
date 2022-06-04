
import 'package:flutter/material.dart';
import 'package:flutter_course_a/network/ResponseModel.dart';
import 'package:flutter_course_a/providers/CryptoDataProvider.dart';
import 'package:flutter_course_a/ui/ui_helper/HomePageView.dart';
import 'package:flutter_course_a/ui/ui_helper/ThemeSwitcher.dart';
import 'package:marquee/marquee.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageViewController = PageController(
    initialPage: 0,
  );

  var defaultChoiceIndex = 0;

  final List<String> _choicesList = ['Top MarketCaps', 'Top Gainers', 'Top Losers'];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final cryptoProvider = Provider.of<CryptoDataProvider>(context, listen: false);
    cryptoProvider.getTopMarketCapData();
  }

  @override
  Widget build(BuildContext context) {

    var primaryColor = Theme.of(context).primaryColor;
    TextTheme textTheme = Theme.of(context).textTheme;


    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        actions: const [
          ThemeSwitcher(),
        ],
        title: const Text("Flutter Course A"),
        titleTextStyle: textTheme.titleLarge,
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [

              // PageView
              Padding(
                padding: const EdgeInsets.only(top: 10.0,left: 5,right: 5),
                child: SizedBox(
                  height: 160,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      HomePageView(controller: _pageViewController),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 10.0),
                          child: SmoothPageIndicator(
                            controller: _pageViewController,
                            count:  4,
                            effect: const ExpandingDotsEffect(
                                dotWidth: 10,
                                dotHeight: 10
                            ),
                            onDotClicked: (index) => _pageViewController.animateToPage(index, duration: const Duration(milliseconds: 300), curve: Curves.easeInOut),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 30,
                width: double.infinity,
                child: Marquee(
                    text: '🔊 this is place for news in application ',
                    style: textTheme.bodySmall,
                ),
              ),
              const SizedBox(height: 5,),

              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5),
                child: Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                              shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                              padding: const EdgeInsets.all(20),
                              primary: Colors.green[700]
                          ),
                          child: Text("buy"),
                        )
                    ),
                    const SizedBox(width: 10,),
                    Expanded(
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          style: ElevatedButton.styleFrom(
                            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                            padding: const EdgeInsets.all(20),
                            primary: Colors.red[700]
                        ),
                          child: Text("sell"),
                        )
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(right: 5.0, left: 5),
                child: Row(
                  children: [
                    Wrap(
                      spacing: 8,
                      children: List.generate(_choicesList.length, (index) {
                        return ChoiceChip(
                            label: Text(
                            _choicesList[index],
                            style: textTheme.titleSmall),
                            selected: defaultChoiceIndex == index,
                            selectedColor: Colors.blue,
                            onSelected: (value){
                              setState(() {
                                defaultChoiceIndex = value ? index : defaultChoiceIndex;
                              });
                            }
                        );
                      }),
                    )
                  ],
                ),
              ),

              Consumer<CryptoDataProvider>(
                  builder: (context, cryptoDataProvider,child){
                    switch(cryptoDataProvider.state.status){
                      case Status.LOADING:
                        return Text(cryptoDataProvider.state.message);
                      case Status.COMPLETED:
                        return Text("Done");
                      case Status.ERROR:
                        return Text(cryptoDataProvider.state.message);
                      default:
                        return Container();
                    }
                  }
              ),
            ],
          ),
        ),
      )
    );
  }
}
