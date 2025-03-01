bool isSubsetSum (List<int> arr, int sum) {
 int n = arr.length;
 List<List<bool>> dp =
 List.generate(n + 1, (_) =>
 List.filled(sum + 1, false));
  for (int i = 0; i <= n; i++)
  dp[i][0] = true;
  for (int i = 1;i <= n; i++)   
  {
  for(int j = 1; j <= sum; j++) {
  if (arr[i - 1] <= j) {
   dp[i][j] = dp[i - 1][j] || dp[i - 1][j - arr[i - 1]; 
  } else{
   dp[i][j]=dp[i - 1][j]
  }
 }
}
return dp[n][sum];
}
void main() {
  List<int> arr = [3,34,4,12,5,2];
  int sum = 9;
  print(isSubsetSum(arr,sum));
}
 
