import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final textColor = StateProvider.autoDispose<Color>((ref) => Colors.black);
