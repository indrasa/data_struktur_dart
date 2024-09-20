void bubbleSort(List<int> arr) {
  int n = arr.length;
  for (int i = 0; i < n - 1; i++) {
    print("i sekarang adalah $i");
    for (int j = 0; j < n - i - 1; j++) {
      print("j sekarang adalah $j");
      if (arr[j] > arr[j + 1]) {
        // Swap
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
  }
}

void main() {
  List<int> data = [64, 34, 25, 12, 22, 11, 90];
  bubbleSort(data);
  print("Sorted array: $data");
}
