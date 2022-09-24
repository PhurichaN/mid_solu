void main() {
  // var mylist =[1,2,3];
  // var mylist2 = [7,8,9,0];
  // var mylist3 = [
  //   for(var i in mylist){
  //     i,
  //     for(var i in mylist2){
  //       i
  //     }
  //   }
  // ];
  // print(mylist);
  // print(mylist2);
  // print(mylist3);

  var mylist4 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];
  var mylist5 = [
  for (var sublist in mylist4) {
    for (var i in sublist) {
      i
    }
  },
  for (var sublist in mylist4) {
    for (var i in sublist) {
      i
    }
  }

  ];
  print(mylist5);
  print(mylist4.length);
  print(mylist5.length);
}