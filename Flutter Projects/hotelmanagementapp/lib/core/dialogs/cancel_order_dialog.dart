import 'package:flutter/material.dart';
import 'package:hotelmanagement/core/dialogs/generic_dialog.dart';

Future<bool> showCancelOrderDialog(
  BuildContext context, {
  required String orderId,
}) async {
  return showGenericDialog<bool>(
    context: context,
    title: 'Cancel Order',
    content: 'Are you sure you want to cancel order $orderId?',
    optionsBuilder: () => {
      'Cancel': false,
      'Confirm': true,
    },
  ).then((value) => value ?? false);
}