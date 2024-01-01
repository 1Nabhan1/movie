import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'main.dart';

class Favorite extends StatefulWidget {
  final Function(int) updateIndex;
  final List<LikedItem> likedItems;

  const Favorite({
    super.key,
    required this.updateIndex,
    required this.likedItems,
  });

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LikedItemsModel>(
      builder: (context, likedItemsModel, _) {
        return Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              onTap: () {
                widget.updateIndex(0);
              },
              child: const Icon(Icons.arrow_back_ios_new_rounded),
            ),
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Text('Favorite Items'),
          ),
          body: Column(
            children: [
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Row(
                    children: [
                      Text(
                        "Favorite",
                        style: GoogleFonts.aBeeZee(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              if (likedItemsModel.likedItems.isNotEmpty)
                Expanded(
                  child: Scrollbar(
                    controller: _scrollController,
                    interactive: true,
                    thumbVisibility: true,
                    child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      controller: _scrollController,
                      itemCount: likedItemsModel.likedItems.length,
                      itemBuilder: (context, index) {
                        LikedItem item = likedItemsModel.likedItems[index];

                        return Dismissible(
                          key: Key(item.name),
                          background: Container(
                            color: Colors.red,
                            alignment: Alignment.centerRight,
                            padding: const EdgeInsets.only(right: 20.0),
                            child: const Icon(Icons.delete, color: Colors.white),
                          ),
                          onDismissed: (direction) {
                            // Remove the item from the likedItemsModel
                            likedItemsModel.toggleLike(item.name, item.image);

                            // Remove the item from the list
                            setState(() {
                              widget.likedItems.removeAt(index);
                            });
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 18.0,
                              vertical: 10,
                            ),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Theme.of(context).brightness ==
                                        Brightness.dark
                                    ? Colors.grey
                                    : Colors.blueAccent.shade700,
                              ),
                              width: double.infinity,
                              height: 100,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          item.image,
                                        )),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: 18.0),
                                      child: Text(
                                        item.name,
                                        style: GoogleFonts.aBeeZee(
                                          color: Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                      ),
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
                )
              else
                Center(
                  child: Text("Nothing Here", style: GoogleFonts.aBeeZee()),
                ),
            ],
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
}
