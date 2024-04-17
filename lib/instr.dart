import 'package:flutter/material.dart';

class instruct extends StatelessWidget {
  instruct({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Container(
          alignment: Alignment.topLeft,
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Text(
                'Instructions',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color.fromARGB(255, 236, 19, 4),
                  backgroundColor: Colors.white,
                  fontSize: 33,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who can donate?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''Let others benefit from your good health. Do donate blood if ...

- you are between age group of 18-60 years.
- your weight is 45 kgs or more.
- your haemoglobin is 12.5 gm% minimum.
- your last blood donation was 3 months earlier.
- you are healthy and have not suffered from malaria, typhoid or other transmissible disease in the recent past.

There are many, many people who meet these parameters of health and fitness!

Do abide by our rules - be truthful about your health status!

We ensure the health of blood, before we take it, as well as after it is collected. Firstly, the donor is expected to be honest about his or her health history and current condition. Secondly, collected blood is tested for venereal diseases, hepatitis B & C and AIDS.''',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Who cannot donate?',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '''Do not donate blood if you have any of these conditions

- cold / fever in the past 1 week.
- under treatment with antibiotics or any other medication.
- cardiac problems, hypertension, epilepsy, diabetes (on insulin therapy), history of cancer,chronic kidney or liver disease, bleeding tendencies, venereal disease etc.
- major surgery in the last 6 months.
- vaccination in the last 24 hours.
- had a miscarriage in the last 6 months or have been pregnant / lactating in the last one year.
- had fainting attacks during last donation.
- have regularly received treatment with blood products.
- shared a needle to inject drugs/ have history of drug addiction.
- had sexual relations with different partners or with a high risk individual.
- been tested positive for antibodies to HIV.

Pregnancy And Menstrual Cycle

Females should not donate blood during pregnancy.
They can donate after 6 months following a normal delivery and when they are not breast feeding.
Females should not donate blood if they are having heavy menstrual flow or menstrual cramps.''',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
