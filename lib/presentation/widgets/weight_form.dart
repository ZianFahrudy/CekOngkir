import 'package:flutter/material.dart';

class WeightFormWidget extends StatelessWidget {
  const WeightFormWidget({
    Key key,
    @required TextEditingController weightController,
  })  : _weightController = weightController,
        super(key: key);

  final TextEditingController _weightController;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.wallet_giftcard_sharp),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: TextFormField(
            controller: _weightController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Berat',
              suffixText: 'gram',
              // prefixIcon: Icon(Icons.wallet_giftcard_sharp),
            ),
          ),
        ),
      ],
    );
  }
}
