import 'package:flutter/material.dart';

class HomeRemedias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Remedias"
        ),
        backgroundColor: Colors.black,
        foregroundColor: Colors.black,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpg"), fit: BoxFit.fitWidth),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Best remedies",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text('''The best home remedies for burns
Mild burns typically take around a week or two to completely heal and usually don’t cause scarring. The goal of burn treatment is to reduce pain, prevent infections, and heal the skin faster.'''),
                Text(
                  "1. Cool water",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''The first thing you should do when you get a minor burn is run cool (not cold) water over the burn area for about 20 minutes. Then wash the burned area with mild soap and water.'''),
                Text(
                  "2. Cool compresses",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''A cool compress or clean wet cloth placed over the burn area helps relieve pain and swelling. You can apply the compress in 5- to 15-minute intervals. Try not to use excessively cold compresses because they may irritate the burn more.'''),
                Text(
                  "3. Antibiotic ointments",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Antibiotic ointments and creams help prevent infections. Apply an antibacterial ointment to your burn and cover with cling film or a sterile, non-fluffy dressing or cloth.'''),
                Text(
                  "4. Aloe vera",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Aloe vera is often touted as the “burn plant.” Studies show evidence that aloe vera is effective in healing first- to second-degree burns. Aloe is anti-inflammatory, promotes circulation, and inhibits the growth of bacteria.
Apply a layer of pure aloe vera gel taken from the leaf of an aloe vera plant directly to the affected area. If you buy aloe vera in a store, make sure it contains a high percentage of aloe vera and avoid products that have additives, especially coloring and perfumes.'''),
                Text(
                  "5. Honey",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Honey just got sweeter. Apart from its delicious taste, honey may help heal a minor burn when applied topically. Honey is an anti-inflammatory and naturally anti-bacterial and anti-fungal.'''),
                Text(
                  "6. Reducing sun exposure",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Do your best to avoid exposing the burn to direct sunlight. The burned skin will be very sensitive to the sun. Keep it covered with clothing.'''),
                Text(
                  "7. Don’t pop your blisters",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''As tempting as it may be, leave your blisters alone. Bursting a blister yourself can lead to infection. If you’re worried about blisters that have formed due to your burn, see a medical professional.'''),
                Text(
                  "8. Take an over-the-counter pain reliever",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''If you have pain, take an OTC pain reliever such as ibuprofen (Motrin, Advil) or naproxen (Aleve). Be sure to read the label for the correct'''),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
