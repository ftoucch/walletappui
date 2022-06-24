import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_buttons.dart';
import 'package:walletappui/util/my_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  // page controller
  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
                   // App bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    
                    // My card text

                      Row(children: const [
                        Text(
                      'My',
                       style: TextStyle(fontSize: 28, fontWeight:FontWeight.bold),
                      ),
                      Text(
                      ' Cards',
                       style: TextStyle(fontSize: 28),
                      ),
                      ],
                      ),  //end my card test

                      // Plus button
                     Container (
                      padding: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        color: Colors.grey[400],
                        shape: BoxShape.circle
                        ),
                      child: const  Icon(Icons.add),
                      )
                    
                ],
                
                ),
              ),
              const SizedBox(height: 25),
          //cards
          Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _controller,
            children: const [
               Mycard(
                balance:5353.20 ,
                cardNumber: 12344568,
                expiryMonth: 10,
                expiryYear: 24,
                color: Colors.teal,
               ),
               Mycard(
                 balance:10000 ,
                cardNumber: 12344568,
                expiryMonth: 11,
                expiryYear: 22,
                color: Colors.black,
               ),
               Mycard(
                 balance:53333.20 ,
                cardNumber: 14344568,
                expiryMonth: 09,
                expiryYear: 24,
                color: Colors.purple,
               ),
            ]
            ),
          ),
          const SizedBox(height: 25),
      SmoothPageIndicator(
        controller:_controller , 
        count: 3, 
        effect:ExpandingDotsEffect(activeDotColor: Colors.grey.shade600)),

          const SizedBox(height: 25),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:const  [
              // send button
               MyButton(
                iconImagePath: 'lib/icons/send-money.png',
                buttonText: 'Send',
               ),
              //pay button
               MyButton(
                 iconImagePath: 'lib/icons/credit-card.png',
                buttonText: 'Pay',
               ), 
              // bills button
              MyButton(
                 iconImagePath: 'lib/icons/bill.png',
                buttonText: 'Bills',
              ),
            ],),
          )
          //3 buttons send, pay, bills
      
          // column -> stats -> transaction
          ],
       
        ),
      ),
    );
  }
}