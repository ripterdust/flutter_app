class ListHelper {
  static List<dynamic> getListNElements(int max, List<dynamic> list) {
    if (max >= list.length) {
      return list;
    }
    final int startIndex = list.length - max;
    return list.sublist(startIndex);
  }
}
