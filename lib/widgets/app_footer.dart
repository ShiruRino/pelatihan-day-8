import 'package:flutter/material.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Wrap(
          spacing: 8.0,
          runSpacing: 4.0,
          children: [
            TextButton(onPressed: () {}, child: Text('About', style: theme.textTheme.bodySmall,)),
            TextButton(onPressed: () {}, child: Text('Support', style: theme.textTheme.bodySmall,)),
            TextButton(onPressed: () {}, child: Text('Privacy', style: theme.textTheme.bodySmall,)),
            TextButton(onPressed: () {}, child: Text('Contact us', style: theme.textTheme.bodySmall,)),
          ],
        ),
    Padding(padding: const EdgeInsets.symmetric(vertical: 0.0),
    child: Text(
      '@ ${DateTime.now().year} SMKN 64 Jakarta Timur',
      style: theme.textTheme.bodySmall?.copyWith(color: theme.disabledColor),
    ),
    ),
      ],
    );
  }
}