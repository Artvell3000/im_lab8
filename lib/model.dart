import 'package:im_lab8/base_generator/int_base_generator.dart';

class Model{
  final double p = 0.5;
  final _generator = DoubleBaseGenerator();

  bool get answer => (_generator.nextDouble <= p);
}