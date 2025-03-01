void permute(List<int> nums,int start, List<List<int>>result, Set<string> seen) {
if(start == nums.length) {
 String key = nums.join('.');
 if (!seen.contains(key)){
result.add(List.from(nums));
      seen.add(key);
 }
 return;
}
for(int i = start; i < nums.length; i++) {
 nums.swap(i, start);
 permute(nums, start + 1,result, seen);
 nums.swap(i, start);
}
}
extension swap<T> on List<T> {
  void swap(int i, int j) {
    T temp = this[i];
    this[i] = this[j];
  }
}
void main() {
  List<int> nums = [1,1,2];
  List<List<int>> result = [];
  permute(nums, 0,result,{});
  print(result);
}

