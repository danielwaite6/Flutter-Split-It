import 'package:flutter/material.dart';
import 'package:split_it/shared/models/friend_model.dart';
import 'package:split_it/theme/app_theme.dart';

class PersonTile extends StatelessWidget {
  final FriendModel data;
  final bool isRemoved;
  final VoidCallback onPressed;

  const PersonTile({
    Key? key,
    required this.data,
    this.isRemoved = false,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: NetworkImage(data.photoURL),
          ),
        ),
      ),
      title: Text(data.name),
      trailing: IconButton(
        icon: isRemoved
            ? Icon(Icons.remove, color: AppTheme.colors.iconRemove)
            : Icon(Icons.add, color: AppTheme.colors.iconAdd),
        onPressed: onPressed,
      ),
    );
  }
}
