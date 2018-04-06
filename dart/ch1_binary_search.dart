void main() {
  //1~100까지 생성  
  int targetNum = 57;
  var list = new List<int>.generate(100, (i) => i+1);
  print("final result =  ${binary_search(list, targetNum)}");
}

int binary_search(List<int> list, int item) {
  //초기화  
  int low = 0;
  //리스트 갯수 - 1
  int high = list.length - 1;
  
  //while low <= high
  while(low <= high) {  
    int mid = ((low + high) / 2).floor();    
    int guess = list[mid];
    print("$low,$high,$mid,$guess");
    if(guess == item) {
      return mid;
    }else if(guess > item) {
      high = mid -1;      
    }else{
      low = mid + 1;
    }		  
  }
  
  return 0;
 
}