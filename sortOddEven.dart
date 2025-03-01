List<int> sortOddEven(List<int>arr) {
 List<int> odd = [],even = [];
 for(var num in arr) {
 odd.sort();
 even.sort((a,b) => b.compareTo(a));
 return [_odd,_even];
 }
 void main() {
  List<int> arr = [5,8,11,6,2,1,7];
  print(sortOddEven(arr));
 }
