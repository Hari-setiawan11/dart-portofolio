import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Routing Profile'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          children: [
            DashboardButton(
              onPressed: () {
                Navigator.pushNamed(context, '/about');
              },
              text: 'About',
              icon: Icons.person,
            ),
            DashboardButton(
              onPressed: () {
                Navigator.pushNamed(context, '/portofolio');
              },
              text: 'Portofolio',
              icon: Icons.work,
            ),
            DashboardButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              text: 'Contact',
              icon: Icons.contact_phone,
            ),
            DashboardButton(
              onPressed: () {
                Navigator.pushNamed(context, '/skill');
              },
              text: 'Skill',
              icon: Icons.star,
            ),
            DashboardButton(
              onPressed: () {
                Navigator.pushNamed(context, '/halaman-404');
              },
              text: 'Error',
              icon: Icons.error,
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final IconData icon;

  const DashboardButton({
    required this.onPressed,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Card(
        elevation: 2.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 50.0,
                color: Colors.blue,
              ),
              SizedBox(height: 10.0),
              Text(
                text,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About', style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Hai, saya Hari Setiawan, seorang mahasiswa Politeknik Negeri Banyuwangi yang penuh semangat dan dedikasi. Saya sedang menempuh pendidikan di bidang Teknologi Rekayasa Perangkat Lunak, dengan harapan dapat menerapkan pengetahuan dan keterampilan yang saya peroleh untuk membangun usaha saya sendiri.",
                  style: TextStyle(fontSize: 19),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Saya memiliki impian besar untuk mendirikan sebuah usaha yang mampu menciptakan lapangan pekerjaan bagi banyak orang. Usaha tersebut bernama Olster Farm, yang saya rencanakan akan bergerak di bidang peternakan. Dengan Olster Farm, saya berharap dapat berkontribusi pada perekonomian lokal dan memberikan peluang kerja yang bermanfaat bagi masyarakat sekitar.",
                  style: TextStyle(fontSize: 19),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Di luar akademik dan rencana usaha, saya memiliki hobi berolahraga. Olahraga tidak hanya membantu saya menjaga kebugaran tubuh, tetapi juga memberikan saya energi dan semangat untuk mengejar tujuan-tujuan saya. Hobi ini juga mengajarkan saya tentang disiplin, kerja keras, dan pentingnya menjaga keseimbangan antara kehidupan pribadi dan profesional.",
                  style: TextStyle(fontSize: 19),
                  textAlign: TextAlign.justify,
                ),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Saya sangat antusias untuk belajar hal-hal baru dan selalu mencari cara untuk meningkatkan keterampilan saya. Saya percaya bahwa dengan kombinasi pendidikan, pengalaman, dan hobi saya, saya dapat mencapai kesuksesan dan memberikan dampak positif bagi orang lain melalui Olster Farm. Jika Anda tertarik untuk mengetahui lebih lanjut tentang saya atau memiliki kesempatan kolaborasi, jangan ragu untuk menghubungi saya di harisetiawan1409@gmail.com. Mari kita bekerja sama untuk menciptakan sesuatu yang luar biasa!",
                  style: TextStyle(fontSize: 19),
                  textAlign: TextAlign.justify,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
