import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:task_ftfl_v_1/utils/card_shape.dart';
import 'package:task_ftfl_v_1/widget/build_feature_widget.dart';
import 'package:task_ftfl_v_1/widget/limit_widget.dart';
import 'package:task_ftfl_v_1/widget/wallet_widget.dart';

class LifelineCartPage extends StatelessWidget {
  const LifelineCartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Card & Wallets",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card Status Section
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white54, Colors.blueGrey.shade100],
                      // Define gradient colors
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/ftfl-card.png",
                        height: 200,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Row(
                          children: [
                            const Text(
                              "Card Status : ",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              " Inactive",
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              child: const Text("Guide"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Activation Section
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 8.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Column(
                          children: [
                            const Text(
                              "Activate your LifelineCard",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                text: "₹ 3499/- Life Time\n",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                children: <TextSpan>[
                                  const TextSpan(
                                    text: "₹ 9999/Year\n",
                                    style: TextStyle(
                                      color: Colors.red,
                                      decoration: TextDecoration.lineThrough,
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const TextSpan(
                                    text: "Offer Ends Soon!",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 8),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepPurple,
                              ),
                              onPressed: () {},
                              child: const Text(
                                "Activate Now",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Column(children: [Icon(Icons.check_circle_outline)]),
                        Expanded(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/icons/man_phone-two.png',
                                height: 120.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    Divider(),
                    const SizedBox(height: 16),

                    // Features Section
                    const Text(
                      "Our Features",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        LimitWidget(text: 'Udhar Limit : ₹ 74425'),
                        LimitWidget(text: 'CP EMI Limit : ₹ 74425'),
                      ],
                    ),
                    const SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildFeatureWidget(
                          title: "Udhar",
                          iconPath: 'assets/icons/handshake-solid.svg',
                        ),
                        BuildFeatureWidget(
                          title: "CP EMI Limit",
                          iconPath:
                              'assets/icons/hand-holding-dollar-solid.svg',
                        ),
                        BuildFeatureWidget(
                          title: "Business Funds",
                          iconPath: 'assets/icons/money-bill-1-wave-solid.svg',
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),

                    // Wallet Section
                    const Text(
                      "Wallet",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            WalletWidget(
                              columnText1: "Lifeline Card Wallet",
                              columText2: "Upcoming EMI/Udhar",
                              num1: '4356',
                              num2: '4356',
                              color: Colors.grey,
                            ),
                            SizedBox(height: 14.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Withdraw'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('Transfer'),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue[50],
                                    side: BorderSide(color: Colors.blueGrey),
                                  ),
                                  child: const Text("More"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            WalletWidget(
                              columnText1: "Lifeline Coin",
                              columText2: "Lifeline Magic Coin",
                              num1: '4356',
                              num2: '600',
                              color: Colors.grey,
                            ),
                            SizedBox(height: 14.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '11th Sept 2023 to 11th Oct 2023',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ),

                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue[50],
                                    side: BorderSide(color: Colors.blueGrey),
                                  ),
                                  child: const Text("More"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            WalletWidget(
                              columnText1: "Cashback Coin",
                              columText2: "Add Credit Coin",
                              num1: '4356',
                              num2: '',
                              color: Colors.red,
                            ),
                            SizedBox(height: 14.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    '11th Sept 2023 to 11th Oct 2023',
                                    style: TextStyle(fontSize: 12.0),
                                  ),
                                ),

                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.lightBlue[50],
                                    side: BorderSide(color: Colors.blueGrey),
                                  ),
                                  child: const Text("More"),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
