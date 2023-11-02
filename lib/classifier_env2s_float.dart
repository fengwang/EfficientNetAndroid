import 'classifier.dart';
import 'package:tflite_flutter_helper/tflite_flutter_helper.dart';

class ClassifierENV2SFloat extends Classifier {
  ClassifierENV2SFloat({int? numThreads}) : super(numThreads: numThreads);

  @override
  String get modelName => 'env2s.tflite';

  @override
  NormalizeOp get preProcessNormalizeOp => NormalizeOp(0, 1);

  @override
  NormalizeOp get postProcessNormalizeOp => NormalizeOp(0, 1);
}
