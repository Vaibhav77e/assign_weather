import 'package:flutter/material.dart';

showDialogBox(
  BuildContext context,
) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Something went wrong'),
      actions: [
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              backgroundColor: const Color.fromARGB(255, 39, 96, 194),
              foregroundColor: Colors.white,
            ),
            onPressed: () => Navigator.of(context).pop(),
            child: const Text(
              'Okay',
            )),
      ],
    ),
  );
}
