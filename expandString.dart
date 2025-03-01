String expandString(String input) {
 RegExp regex = RegExp(r'([a-zA-Z])(\d+)');
 return
regex.allMatches(input).map((match) {
   return match.group(1)! * int parse(match.group(2)!);}).join();
}
void main() {
print(expandString("a1b10")); 
print(expandString("b3c6d15"));
}

