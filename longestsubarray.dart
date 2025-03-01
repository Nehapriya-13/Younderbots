int longestsubarray(List<int>arr, int k) {
int left = 0, right =0; sum = 0;maxLength = 0;
while(right < arr.length) {
  sum += arr[right++];
  while (sum > k) {
    sum -= arr[left++];
  }
  maxLength = maxLength > (right - left) ? maxLength : (right - left);
  }
  return maxLength;
}
void main() {
  List<int> arr = [3,1,2,1,4,5];
  int k = 7;
  print(longestsubarray(arr,k));
  }
