import 'package:circle_list/circle_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_app/inner.dart';
import 'package:movie_app/reusetxt.dart';
import 'package:movie_app/model class.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/theme%20manager.dart';

class home extends StatefulWidget {
  final Function(int) updateIndex;
  const home({
    super.key,
    required this.updateIndex,
  });

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> with TickerProviderStateMixin {
  late AnimationController _filcontroller;
  ScrollController? _scrollController;
  List<String> txt1 = [
    "Movies",
    "Series",
    "Cartoons",
    "Anime",
    "Documentaries",
  ];
  List<String> cat = [
    "Comedy",
    "Horror",
    "Action",
    "Thriller",
    "Fantasy",
    "Adventure"
  ];

  int selectedChip = 0;
  int SelectedChip = 0;
  final bool _switchValue = false;
  @override
  void initState() {
    super.initState();
    _loadSwitchValue();
    _applyThemeMode(_switchValue);
    _filcontroller = AnimationController(
      vsync: this, // Use `this` as the vsync
      duration: const Duration(seconds: 1),
    );
  }

  Future<void> _loadSwitchValue() async {
    await ThemeManager.applyTheme(_switchValue);
    bool switchValue = await ThemeManager.loadSwitchValue();
    _applyThemeMode(switchValue);
  }

  Future<void> _applyThemeMode(bool switchValue) async {
    await ThemeManager.applyTheme(switchValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 19.0),
          child: Image.asset("images/star.png"),
        ),
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                // Use setState to update the currentIndex
                widget.updateIndex(1);
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                width: 150,
                height: 39,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Icon(
                      Icons.search,
                    ),
                    Text(
                      "Search",
                      style: GoogleFonts.aBeeZee(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 5),
            Container(
                width: 50,
                height: 39,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).brightness == Brightness.dark
                        ? Colors.white
                        : Colors.black,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () {
                    if (_filcontroller.status == AnimationStatus.dismissed) {
                      _filcontroller.reset();
                      _filcontroller.animateTo(0.6);
                    } else {
                      _filcontroller.reverse();
                    }
                    showTopToBottomSheetExample(context);
                  },
                  icon: ColorFiltered(
                    colorFilter: ColorFilter.mode(
                        Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.black,
                        BlendMode.srcIn),
                    child: Lottie.asset(Icons8.clear_filter,
                        width: 25, controller: _filcontroller),
                  ),
                )),
            const SizedBox(width: 5),
            Container(
              width: 50,
              height: 39,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.keyboard_voice,
                ),
              ),
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 9.0, left: 0),
            child: GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        widget.updateIndex(3);
                        // Navigator.push(context, MaterialPageRoute(builder: (context) => account(),));
                      },
                      child: const Icon(Icons.account_circle_outlined,
                          color: Colors.grey, size: 32),
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20, top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Categories", style: GoogleFonts.aBeeZee(fontSize: 18)),
                  Text(
                    "See more",
                    style: GoogleFonts.aBeeZee(
                      color: Colors.grey,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(13.0),
              child: Center(
                child: Wrap(
                  spacing: 8.0,
                  children: List<Widget>.generate(
                    5, // Number of choices
                    (int index) {
                      return ChoiceChip(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        checkmarkColor: Colors.deepOrange,
                        selectedColor: Colors.grey,
                        backgroundColor:
                            Theme.of(context).brightness == Brightness.dark
                                ? Colors.black
                                : Colors.white,
                        label: Text(txt1[index], style: GoogleFonts.aBeeZee()),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        selected: selectedChip == index,
                        onSelected: (bool selected) {
                          setState(() {
                            selectedChip = selected ? index : -1;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
              ),
            ),
            const reuse(
              news: "New",
              categories: "See more",
            ),
            SizedBox(
              height: 250,
              child: Scrollbar(
                interactive: true,
                thickness: 0.5,
                thumbVisibility: true,
                controller: _scrollController,
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: product.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Inner(
                                  discript: product[index].disc,
                                  images: product[index].img1,
                                  texts: product[index].txt2,
                                  texts2: product[index].txt3,
                                  rat: product[index].txtg,
                                  cimg: product[index].imgg,
                                  ctxt: product[index].txtt,
                                ),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.orange)),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 150,
                                  width: 130,
                                  child: Card(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          product[index].img1,
                                          height: 150,
                                          width: 130,
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    product[index].txt2,
                                    style: GoogleFonts.aBeeZee(),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.star,
                                        color: Colors.orangeAccent, size: 10),
                                    Text(
                                      product[index].txtg,
                                      style: GoogleFonts.aBeeZee(),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const reuse(news: "Most Popular", categories: "See more"),
            SizedBox(
              height: 250,
              child: Scrollbar(
                controller: _scrollController,
                thickness: 0.5,
                child: ListView.builder(
                  controller: _scrollController,
                  itemCount: product.length,
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Inner(
                                    discript: product1[index].disc2,
                                    images: product1[index].img2,
                                    texts: product1[index].txt4,
                                    texts2: product[index].txt3,
                                    rat: product[index].txtg,
                                    cimg: product1[index].imgg2,
                                    ctxt: product1[index].txtt2),
                              ));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(color: Colors.orange)),
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 150,
                                  width: 130,
                                  child: Card(
                                    child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          product1[index].img2,
                                          height: 150,
                                          width: 130,
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    product1[index].txt4,
                                    style: GoogleFonts.aBeeZee(),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    const Icon(Icons.star,
                                        color: Colors.orangeAccent, size: 10),
                                    Text(
                                      product[index].txtg,
                                      style: GoogleFonts.aBeeZee(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            const reuse(
              news: "Coming soon",
              categories: "See more",
            ),
            SizedBox(
              height: 200,
              child: CircleList(
                innerCircleRotateWithChildren: true,
                showInitialAnimation: true,
                rotateMode: RotateMode.onlyChildrenRotate,
                innerRadius: Checkbox.width,
                childrenPadding: double.minPositive,
                animationSetting: AnimationSetting(
                    curve: Curves.bounceInOut,
                    duration: const Duration(seconds: 2)),
                origin: const Offset(0, 0), // Set the center of the circle
                children: List.generate(
                  6,
                  (index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Inner(
                                  images: product2[index].imo,
                                  texts: product2[index].tot,
                                  texts2: product2[index].txtf,
                                  rat: product2[index].stt,
                                  discript: product2[index].disc1,
                                  cimg: product2[index].imgg1,
                                  ctxt: product2[index].txtt1),
                            ));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                                color: Colors
                                    .deepOrange)), // Customize the item's appearance
                        width: 90,
                        height: 170,
                        child: Center(
                            child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            product2[index].imo,
                            fit: BoxFit.fill,
                            width: 100,
                            height: 150,
                          ),
                        )),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {},
        child: Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25), color: Colors.orange),
            child:
                Icon(Icons.play_arrow, color: Colors.grey.shade300, size: 30)),
      ),
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }

  void showTopToBottomSheetExample(BuildContext context) {
    showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: MaterialLocalizations.of(context).modalBarrierDismissLabel,
      transitionDuration: const Duration(milliseconds: 400),
      pageBuilder: (BuildContext buildContext, Animation<double> animation,
          Animation<double> secondaryAnimation) {
        return Align(
          alignment: Alignment.topCenter,
          child: Material(
            color: Colors.black.withOpacity(0.7),
            child: SizedBox(
              height: 500.0,
              child: Column(
                children: [
                  Expanded(
                    child: SafeArea(
                      child: Container(
                        decoration:
                            const BoxDecoration(color: Colors.transparent),
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text("Filter",
                                style: GoogleFonts.aBeeZee(fontSize: 20)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Categories",
                                    style: GoogleFonts.aBeeZee(fontSize: 18)),
                              ],
                            ),
                            Center(
                              child: Wrap(
                                spacing: 8.0,
                                children: List<Widget>.generate(
                                  5, // Number of choices
                                  (int index) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return ChoiceChip(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          checkmarkColor: Colors.deepOrange,
                                          selectedColor: Colors.grey,
                                          backgroundColor:
                                              Theme.of(context).brightness ==
                                                      Brightness.dark
                                                  ? Colors.black
                                                  : Colors.white,
                                          label: Text(txt1[index],
                                              style: GoogleFonts.aBeeZee()),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          selected: selectedChip == index,
                                          onSelected: (bool selected) {
                                            setState(() {
                                              selectedChip =
                                                  selected ? index : -1;
                                            });
                                          },
                                        );
                                      },
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Genre",
                                    style: GoogleFonts.aBeeZee(fontSize: 18)),
                              ],
                            ),
                            Center(
                              child: Wrap(
                                spacing: 8.0,
                                children: List<Widget>.generate(
                                  6, // Number of choices
                                  (int index) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return ChoiceChip(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20),
                                          checkmarkColor: Colors.deepOrange,
                                          selectedColor: Colors.grey,
                                          backgroundColor:
                                              Theme.of(context).brightness ==
                                                      Brightness.dark
                                                  ? Colors.black
                                                  : Colors.white,
                                          label: Text(cat[index],
                                              style: GoogleFonts.aBeeZee()),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          selected: SelectedChip == index,
                                          onSelected: (bool selected) {
                                            setState(() {
                                              SelectedChip =
                                                  selected ? index : -1;
                                            });
                                          },
                                        );
                                      },
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                            const SizedBox(height: 15),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(300, 20),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  backgroundColor: Colors.deepOrangeAccent),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(),
                                child: Text('Apply Filters',
                                    style: GoogleFonts.aBeeZee(
                                        color: Colors.white)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      transitionBuilder: (BuildContext context, Animation<double> animation,
          Animation<double> secondaryAnimation, Widget child) {
        return SlideTransition(
          position:
              Tween(begin: const Offset(0.0, -1.0), end: const Offset(0.0, 0.0))
                  .animate(animation),
          child: child,
        );
      },
    );
  }

  @override
  void dispose() {
    _filcontroller.dispose();
    super.dispose();
  }
}
