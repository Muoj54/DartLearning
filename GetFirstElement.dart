dynamic getFirstElement(List myList) {
  if (myList.isNotEmpty) {
    return myList[0];
  } else {
    print("Error: The list is empty.");
    return null;
  }
}

void main() {
  // for example;
  List<int> myNumbers = [7,12,19,31,50,81,131];
  var firstElement = getFirstElement(myNumbers);
  
  if (firstElement != null) {
    print('The first element of the list is: $firstElement');
  }
}