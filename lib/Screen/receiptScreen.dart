import 'package:flutter/material.dart';

class ReceiptScreen extends StatefulWidget {
  final String imagePath;
  final String name;
  final String dateTime;
  final double value;

  const ReceiptScreen({
    super.key,
    required this.imagePath,
    required this.name,
    required this.dateTime,
    required this.value,
  });

  @override
  State<ReceiptScreen> createState() => _ReceiptScreenState();
}

class _ReceiptScreenState extends State<ReceiptScreen> {
  Widget leftrightLabel(String leftText, String rightText,
      {Color? rightTextColor}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            leftText,
            style: TextStyle(
              color: Colors.grey.shade700,
              fontSize: 16,
            ),
          ),
          Text(
            rightText,
            style: TextStyle(
              color: rightTextColor ?? Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Padding(
        padding: const EdgeInsets.only(right: 55),
        child: const Text('Receipt'),
      ))),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                children: [
                  Card(
                    elevation: 4,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 50,
                            backgroundImage: AssetImage(widget.imagePath),
                          ),
                          const SizedBox(height: 16),
                          Text('Rp: ${widget.value.toStringAsFixed(2)}',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: widget.value > 0
                                      ? Colors.green
                                      : widget.value < 0
                                          ? Colors.red
                                          : Colors.grey)),
                          Text('${widget.name}',
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              )),
                          Text('6090358170 \u2981 BCA',
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontSize: 16,
                              )),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: OutlinedButton(
                              onPressed: () {},
                              child:  Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(Icons.receipt, color: Colors.grey.shade800,),
                                  const SizedBox(width: 8),
                                  Text('Bayar hutang bossque',
                                  style: TextStyle(
                                    color: Colors.grey.shade800
                                  ),),
                                ],
                              ),
                            ),
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          leftrightLabel("Status", "Success",
                              rightTextColor: Colors.green),
                          const SizedBox(
                            height: 8,
                          ),
                          leftrightLabel("Date", '${widget.dateTime}'),
                          const SizedBox(
                            height: 8,
                          ),
                          leftrightLabel("Time", '09:41 AM'),
                          const SizedBox(
                            height: 8,
                          ),
                         Container(
  color: Colors.grey.shade300,
  padding: EdgeInsets.symmetric(vertical: 8),
  child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Transaction ID",
          style: TextStyle(
            color: Colors.grey.shade700,
            fontSize: 16,
          ),
        ),
        const Row(
          children: [
            Text(
              "CGX-1097564",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.add_box_outlined,
              color: Color.fromARGB(255, 54, 105, 233),
            )
          ],
        ),
      ],
    ),
  ),
),

                          const SizedBox(
                            height: 8,
                          ),
                          leftrightLabel("Tax", 'Rp6.500'),
                          const SizedBox(
                            height: 8,
                          ),
                          const Divider(
                            color: Colors.grey,
                            thickness: 0.5,
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Total",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                "Rp.2506.500",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                const SizedBox(height: 8),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
    side: BorderSide(color: Color.fromARGB(255, 54, 105, 233)),
  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.share_outlined,
                        color: Color.fromARGB(255, 54, 105, 233),
                      ),
                      Text('Share Receipt',
                      style: TextStyle(
                        color: Color.fromARGB(255, 54, 105, 233),
                      ),),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.blue),
                  ),
                  onPressed: () {},
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Close',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
