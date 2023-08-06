import 'package:flutter/material.dart';

/// It's a common UI element used to provide visual feedback to users that their request is being processed or data is being fetched.
class ProgressLoader extends StatelessWidget {
  /// Here, we are using White Color as fallback color to [CircularProgressIndicator]
  const ProgressLoader({
    super.key,
    this.color = Colors.white,
  });

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}
