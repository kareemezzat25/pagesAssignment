import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pagesassignment/bestseller.dart';
import 'package:pagesassignment/categoriesslider.dart';
import 'package:pagesassignment/categoryModelseller.dart';
import 'package:pagesassignment/textWidegt.dart';

class AudioBooks extends StatelessWidget {
  AudioBooks({super.key});
  List<String> categories = ["Art", "Business", "Comedy", "Drama", "Sports"];
  List<String> images = [
    "assets/Image Placeholder 1.png",
    "assets/Image Placeholder 400x600.png"
  ];
  List<CategoryModel> categoriesseller = [
    CategoryModel(
        categoryimage: "assets/Image Placeholder 240x240.png",
        title: "Light Mage",
        author: "Laurie Forest"),
    CategoryModel(
        categoryimage: "assets/Image Placeholder 240x240.png",
        title: "Light Mage",
        author: "Laurie Forest")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Image.asset(
            "assets/search.png",
          ),
        ),
        titleSpacing: 8,
        title: Image.asset("assets/AudiBooks..png"),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Image.asset("assets/Setting.png"),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            RowWidget(text: "Categories"),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 40,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoriesSlider(category: categories[index]);
                    }),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            RowWidget(text: "Recommended For You"),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.only(left: 24),
                child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Image.asset(
                            width: 200,
                            height: 300,
                            images[index],
                            fit: BoxFit.fill),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            RowWidget(text: "Best Seller"),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 150,
              child: Padding(
                padding: const EdgeInsets.only(left: 24.0),
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: categoriesseller.length,
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 16,
                      );
                    },
                    itemBuilder: (context, index) {
                      return CardbestSiller(
                          categoryModel: categoriesseller[index]);
                    }),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: const Color(0xFF4838D1),
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Library',
          ),
        ],
      ),
    );
  }
}
