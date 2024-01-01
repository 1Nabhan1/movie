import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_icons/icons8.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:movie_app/reusetxt.dart';
import 'package:provider/provider.dart';
import 'main.dart';

class Inner extends StatefulWidget {
  final String images;
  final String texts;
  final double texts2;
  final String rat;
  final String discript;
  final List<String> cimg;
  final List<String> ctxt;

  const Inner({
    super.key,
    required this.images,
    required this.texts,
    required this.texts2,
    required this.rat,
    required this.discript,
    required this.cimg,
    required this.ctxt,
  });

  @override
  _InnerState createState() => _InnerState();
}

class _InnerState extends State<Inner> with TickerProviderStateMixin {
  late AnimationController _loadcontroller;
  late AnimationController _sharecontroller;
  late AnimationController _favcontroller;

  @override
  void initState() {
    super.initState();
    _loadcontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _sharecontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _favcontroller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LikedItemsModel>(
      builder: (context, likedItemsModel, _) {
        bool isLiked = likedItemsModel.likedItems.contains(widget.texts);
        return Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 500,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: NetworkImage(widget.images),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      SafeArea(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_outlined,
                                  color: Colors.white,
                                ),
                                iconSize: 30,
                              ),
                              IconButton(
                                onPressed: () {
                                  if (_favcontroller.status ==
                                      AnimationStatus.dismissed) {
                                    _favcontroller.reset();
                                    _favcontroller.animateTo(0.6);
                                  } else {
                                    _favcontroller.reverse();
                                  }
                                  isLiked = !isLiked;
                                  likedItemsModel.toggleLike(
                                      widget.texts, widget.images);
                                },
                                icon: ColorFiltered(
                                  colorFilter: ColorFilter.mode(
                                      isLiked ? Colors.white : Colors.red,
                                      BlendMode.srcIn),
                                  child: Lottie.asset(
                                    Icons8.heart,
                                    fit: BoxFit.cover,
                                    width: 25,
                                    height: 25,
                                    controller: _favcontroller,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.texts,
                        style: GoogleFonts.aBeeZee(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(
                            color:
                                Theme.of(context).brightness == Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                          ),
                        ),
                        child: IconButton(
                          onPressed: () {
                            if (_sharecontroller.status ==
                                AnimationStatus.dismissed) {
                              _sharecontroller.reset();
                              _sharecontroller.animateTo(0.6);
                            } else {
                              _sharecontroller.reverse();
                            }
                          },
                          icon: ColorFiltered(
                            colorFilter: ColorFilter.mode(
                              Theme.of(context).brightness == Brightness.dark
                                  ? Colors.white
                                  : Colors.black,
                              BlendMode.srcIn,
                            ),
                            child: Lottie.asset(
                              Icons8.share,
                              fit: BoxFit.cover,
                              width: 25,
                              height: 25,
                              controller: _sharecontroller,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0, left: 10, top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              StarRating(rating: widget.texts2),
                              Padding(
                                padding: const EdgeInsets.only(right: 38.0),
                                child: Row(
                                  children: [
                                    Text("Rating:",
                                        style: GoogleFonts.aBeeZee()),
                                    Text(widget.rat),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                            child: IconButton(
                              onPressed: () {
                                if (_loadcontroller.status ==
                                    AnimationStatus.dismissed) {
                                  _loadcontroller.reset();
                                  _loadcontroller.animateTo(0.6);
                                } else {
                                  _loadcontroller.reverse();
                                }
                              },
                              icon: ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                  Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black,
                                  BlendMode.srcIn,
                                ),
                                child: Lottie.asset(
                                  Icons8.download,
                                  fit: BoxFit.cover,
                                  width: 25,
                                  height: 25,
                                  controller: _loadcontroller,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 18.0, right: 10, top: 10),
                      child: Text(widget.discript),
                    )
                  ]),
                ),
                const reuse(
                  news: "Actors",
                  categories: "See more",
                ),
                CarouselSlider(
                  options: CarouselOptions(
                    height: 250.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    viewportFraction: 0.3,
                  ),
                  items: widget.cimg.asMap().entries.map((entry) {
                    int index = entry.key;
                    String imageUrl = entry.value;
                    String actorText = widget.ctxt[index];
                    return Builder(
                      builder: (BuildContext context) {
                        return Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              margin: const EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(border: Border.all(color: Colors.orange),
                                color: Colors.amber,
                                borderRadius: BorderRadius.circular(100.0),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100.0),
                                child: Image.network(
                                  imageUrl.toString(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(actorText.toString())
                          ],
                        );
                      },
                    );
                  }).toList(),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _loadcontroller.dispose();
    _sharecontroller.dispose();
    _favcontroller.dispose();
    super.dispose();
  }
}

class StarRating extends StatelessWidget {
  final double rating;
  final int starCount;
  final double size;
  final Color color;
  final Color borderColor;

  const StarRating({
    super.key,
    required this.rating,
    this.starCount = 5,
    this.size = 20.0,
    this.color = Colors.orangeAccent,
    this.borderColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: List.generate(starCount, (index) {
        double ratingValue = index + 1.0;
        IconData starIcon = Icons.star;

        if (rating < ratingValue) {
          starIcon = Icons.star_border;
        } else if (rating > ratingValue - 1) {
          starIcon = Icons.star;
        } else {
          starIcon = Icons.star_half;
        }

        return Container(
          padding: const EdgeInsets.all(2.0),
          child: Icon(
            starIcon,
            size: size,
            color: rating >= ratingValue ? color : borderColor,
          ),
        );
      }),
    );
  }
}
