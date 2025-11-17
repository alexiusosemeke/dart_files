// This talks about asynchronous prograrmming in Dart using Future, async, await, and Streams.

void main() {
  getData().then((value) => print(value));
  print('Asynchronous programming in Dart');
}

Future getData() {
  return Future.delayed(Duration(seconds: 5), () {
    return 'Data fetched after 5 seconds';
  });
}
