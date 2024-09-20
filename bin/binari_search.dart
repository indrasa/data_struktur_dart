int binarySearch(List<int> arr, int left, int right, int target) {
  while (left <= right) {
    int mid = left + (right - left) ~/ 2;

    // Jika elemen ditemukan
    if (arr[mid] == target) return mid;

    // Jika elemen lebih besar, abaikan bagian kiri
    if (arr[mid] < target)
      left = mid + 1;

    // Jika elemen lebih kecil, abaikan bagian kanan
    else
      right = mid - 1;
  }

  // Jika elemen tidak ditemukan
  return -1;
}

void main() {
  List<int> data = [2, 3, 4, 10, 40];
  int target = 10;
  int result = binarySearch(data, 0, data.length - 1, target);
  print(result == -1 ? "Element not found" : "Element found at index $result");
}
