
enum RoutePath {
  initial(path: '/'),
  screenA(path: 'screenA'),
  screenB(path: 'screenB'),
  screenC(path: 'screenC');

  const RoutePath({required this.path});
  final String path;
}
