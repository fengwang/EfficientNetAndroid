# Image Classification with flutter tflite

This is a demo application showing how to deploy a image classification model to Android using [flutter-tflite](https://github.com/tensorflow/flutter-tflite).


## Building the app

Fetch code and model

```bash
TODO for git clone stuff
```


build for Android and Linux

```bash
flutter build apk -v
flutter build linux -v
flutter build bundle -v
```

## Screenshot

![](./assets/android.demo.screenshot.jpg)

## Model

The [EfficientNet model](./assets/env2s.tflite) is taken from keras model zoo. The conversion is quickly done using tflite converter without considering quantization/prune:

```python
import tensorflow as tf
env2s = tf.keras.applications.EfficientNetV2S(include_preprocessing=True, classes=1000, classifier_activation=None)
converter = tf.lite.TFLiteConverter.from_keras_model(env2s)
tflite_model = converter.convert()
with open('./assets/env2s.tflite', 'wb') as f:
  f.write(tflite_model)
```

## License

MIT


