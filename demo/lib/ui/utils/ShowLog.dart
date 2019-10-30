import 'package:logger/logger.dart';

class ShowLog{
  final logger = Logger();

  void debug(String msg) {
    logger.d(msg);
  }
  
}