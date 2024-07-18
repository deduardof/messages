import 'package:flutter/material.dart';

enum MessageType {
  alert(
    icon: Icons.warning_amber_rounded,
    primaryColor: Color(0xFFD64218),
    secundaryColor: Color(0xFF8F8F8F),
    backgroundColor: Color(0xFFFEFEFE),
  ),
  info(
    icon: Icons.info_outline,
    primaryColor: Color.fromARGB(255, 3, 89, 139),
    secundaryColor: Color(0xFF8F8F8F),
    backgroundColor: Color(0xFFFEFEFE),
  ),
  success(
    icon: Icons.check_outlined,
    primaryColor: Color(0xFF087423),
    secundaryColor: Color(0xFF8F8F8F),
    backgroundColor: Color(0xFFFEFEFE),
  ),
  error(
    icon: Icons.cancel_outlined,
    primaryColor: Color(0xFFC7080C),
    secundaryColor: Color(0xFF8F8F8F),
    backgroundColor: Color(0xFFFEFEFE),
  );

  const MessageType({
    required this.icon,
    required this.primaryColor,
    required this.secundaryColor,
    required this.backgroundColor,
  });

  final IconData icon;
  final Color primaryColor;
  final Color secundaryColor;
  final Color backgroundColor;
}

class Message extends StatelessWidget {
  const Message({super.key, required this.type, required this.title, required this.subtitle});
  final MessageType type;
  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: type.backgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: Icon(
                type.icon,
                color: type.primaryColor,
                size: 32,
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: type.primaryColor,
                  ),
                ),
                Text(
                  subtitle,
                  style: TextStyle(
                    fontSize: 14,
                    color: type.secundaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
