import 'package:flutter/material.dart';
import 'package:mealsapp/data/dummy_data.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/screens/meals.dart';
import 'package:mealsapp/widgets/category_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  void _changeScreen(Category category, BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (ctx) => Meals(
        category: category,
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bir kategori seçiniz"),
      ),
      body: GridView(
        gridDelegate:
            // crossAxisCount sayesinde yan yana kaç eleman gelecek ayarlanabilir.
            const SliverGridDelegateWithFixedCrossAxisCount(
                // crosAxisSpacing yatay boşluk, mainAxisSpacing dikey boşluk verir.
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                // width / height  (genişliğin uzunluğa oranı)
                childAspectRatio: 1.5),
        // categoryList'deki her bir eleman için CategoryCard() eklenir.
        children: [
          for (final c in categoryList)
            CategoryCard(
              category: c,
              onCategoryClick: () => _changeScreen(c, context),
            ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
              ),
              child: Text("Drawer Header"),
            ),
            ListTile(
              title: const Text("Home"),
            ),
          ],
        ),
      ),
    );
  }
}
