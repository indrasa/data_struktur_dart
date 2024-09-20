void insertionSort(List<int> arr) {
  int n = arr.length;
  for (int i = 1; i < n; i++) {
    int key = arr[i];
    int j = i - 1;

    // Pindahkan elemen yang lebih besar dari key ke posisi satu indeks lebih besar
    while (j >= 0 && arr[j] > key) {
      arr[j + 1] = arr[j];
      j = j - 1;
    }
    arr[j + 1] = key;
  }
}

void main() {
  List<int> data = [12, 11, 13, 5, 6];
  insertionSort(data);
  print("Sorted array: $data");
}
