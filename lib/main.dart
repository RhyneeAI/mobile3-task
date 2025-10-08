import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const ProfileCard());
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfileCardView(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Scaffold
class ProfileCardView extends StatelessWidget {
  const ProfileCardView({super.key});
  
  static const Color primaryColor = Color.fromARGB(255, 4, 11, 46);
  static const Color secondaryColor = Colors.amber;
  
  Widget cardItem({
    required IconData icon,
    required String text,
  }) {
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      color: Colors.white.withOpacity(0.9),
      child: ListTile(
        leading: Icon(icon, color: primaryColor),
        title: Text(
          text,
          style: TextStyle(
            letterSpacing: 1.2345,
            color: primaryColor,
            fontWeight: FontWeight.w500
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                'https://pbs.twimg.com/media/FLZGGYIUUAMOA75.jpg',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(margin: EdgeInsets.only(bottom: 20.0)),
            Text(
              'Luhung Lugina',
              style: GoogleFonts.poppins(
                fontSize: 32,
                color: secondaryColor,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              'ALPEMDAS', 
              style: GoogleFonts.poppins(
                fontSize: 20,
                color: secondaryColor,
                fontWeight: FontWeight.w300
              )
            ),
            const SizedBox(
              width: 50,
              height: 35,
              child: Divider(
                thickness: 3,
                color: secondaryColor,
              ),
            ),
            cardItem(
              icon: Icons.phone,
              text: '0872-7272-7277',
            ),
            cardItem(
              icon: Icons.mark_email_read_outlined,
              text: 'wysi@gmail.com',
            ),
            cardItem(
              icon: Icons.facebook,
              text: 'facebook.com/llsed',
            ),
            cardItem(
              icon: Icons.link,
              text: 'github.com/RhyneeAI',
            ),
          ],
        ),
      ),
    );
  }
}
