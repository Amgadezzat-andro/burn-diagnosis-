import 'package:flutter/material.dart';

class Tratment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'treatment',
          style: TextStyle(color: Colors.white),
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
                  "For All Burns",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "1. Stop Burning Immediately",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),

                Text(
                    '''Put out fire or stop the person's contact with hot liquid, steam, or other material.
Help the person "stop, drop, and roll" to smother flames.
Remove smoldering material from the person.
Remove hot or burned clothing. If clothing sticks to skin, cut or tear around it.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "2. Remove Constrictive Clothing Immediately",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    "Take off jewelry, belts, and tight clothing. Burns can swell quickly.",
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),

                ),
                Text(
                  "Then take the following steps:",
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                Text(
                  "For First-Degree Burns (Affecting Top Layer of Skin)",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "1. Cool Burn",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Hold burned skin under cool (not cold) running water or immerse in cool water until the pain subsides.
Use compresses if running water isn't available.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),

                ),
                Text(
                  "2. Protect Burn",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text('''Cover with sterile, non-adhesive bandage or clean cloth.
Do not apply butter, oil, lotions, or creams (especially if they contain fragrance). Apply a petroleum-based ointment two to three times per day.'''
                ,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "3. Treat Pain",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Give over-the-counter pain reliever such as acetaminophen (Panadol, Tylenol), ibuprofen (Advil, Motrin, Nuprin), or naproxen (Aleve, Naprosyn).''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "4. When to See a Doctor",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text('''Seek medical help if:
You see signs of infection, like increased pain, redness, swelling, fever, or oozing.
The person needs tetanus or booster shot, depending on date of last injection. Tetanus booster should be given every 10 years.
The burn blister is larger than two inches or oozes.
Redness and pain last more than a few hours.
The pain gets worse.
The hands, feet, face, or genitals are burned.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "5. Follow Up",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''The doctor will examine the burn and may prescribe antibiotics and pain medication.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "For Second-Degree Burns (Affecting Top 2 Layers of Skin)",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "1. Cool Burn",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text('''Immerse in cool water for 10 or 15 minutes.
Use compresses if running water isn't available.
Don't apply ice. It can lower body temperature and cause further pain and damage.
Don't break blisters or apply butter or ointments, which can cause infection.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "2. Protect Burn",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Cover loosely with sterile, nonstick bandage and secure in place with gauze or tape.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "3. Prevent Shock",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Unless the person has a head, neck, or leg injury, or it would cause discomfort:
-Lay the person flat.
-Elevate feet about 12 inches.
-Elevate burn area above heart level, if possible.
-Cover the person with coat or blanket.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "4. See a Doctor",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''The doctor can test burn severity, prescribe antibiotics and pain medications, and administer a tetanus shot, if needed.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "For Third-Degree Burns",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "1. Call 911",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "2. Protect Burn Area",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Cover loosely with sterile, nonstick bandage or, for large areas, a sheet or other material that that won't leave lint in wound.
Separate burned toes and fingers with dry, sterile dressings.
Do not soak burn in water or apply ointments or butter, which can cause infection.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "3. Prevent Shock",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Unless the person has a head, neck, or leg injury or it would cause discomfort:
Lay the person flat.
Elevate feet about 12 inches.
Elevate burn area above heart level, if possible.
Cover the person with coat or blanket.
For an airway burn, do not place pillow under the person's head when the person is lying down. This can close the airway.
Have a person with a facial burn sit up.
Check pulse and breathing to monitor for shock until emergency help arrives.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                Text(
                  "4. See a Doctor",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                ),
                Text(
                    '''Doctors will give oxygen and fluid, if needed, and treat the burn.''',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
