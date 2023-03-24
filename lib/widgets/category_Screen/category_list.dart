import 'package:expense/models/database_provider.dart';
import 'package:expense/widgets/category_Screen/category_card.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../models/ex_category.dart';

class Category_list extends StatelessWidget {
  const Category_list({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DatabaseProvider>(
      builder: ((context, db, child) {
        List<ExpenseCategory> list = db.categories;
        return ListView.builder(
          physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
          ),
          itemCount: list.length,
          itemBuilder: ((context, index) {
            return CategoryCard(list[index]);
          }),
        );
      }),
    );
  }
}
