public void setup() {            

  int [] theArray = {1, 3, 5, 7, 10};           

  System.out.print(binarySearch(theArray, 0)+", ");            

  System.out.print(binarySearch(theArray, 1)+", ");            

  System.out.print(binarySearch(theArray, 3)+", ");            

  System.out.print(binarySearch(theArray, 6)+", ");            

  System.out.print(binarySearch(theArray, 10)+", ");            

  System.out.println(binarySearch(theArray, 11));          

  System.out.print(binarySearch(theArray, 0, 0, 4)+", ");            

  System.out.print(binarySearch(theArray, 1, 0, 4)+", ");            

  System.out.print(binarySearch(theArray, 3, 0, 4)+", ");            

  System.out.print(binarySearch(theArray, 6, 0, 4)+", ");            

  System.out.print(binarySearch(theArray, 10, 0, 4)+", ");            

  System.out.println(binarySearch(theArray, 11, 0, 4));

}      

public static int binarySearch(int [] naNums, int nTarget) {           

  int high = naNums.length-1;

  int low = 0;

  while (high >=low)

  {

    int guess = (low + high)/2;

    if (naNums[guess] == nTarget)

      return guess;

    else if (naNums[guess] < nTarget)

      low = guess+1;

    else

      high = guess-1;

  }

  return -1;

}      

public static int binarySearch(int [] naNums, int nTarget, int low, int high) {           

    while(low <= high){

  int guess = (low+high)/2;

   if(naNums[guess]==nTarget)

    return guess;

   else if(naNums[guess] < nTarget)

    return binarySearch(naNums, nTarget, guess+1, high);

  else if(naNums[guess] > nTarget)

    return binarySearch(naNums, nTarget,low,guess-1);

  }

  return -1;

}  

 

 

 

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

 

 

private Item[] store = 

  {

  new Item(184, 14), 

  new Item(196, 60), 

  new Item(206, 31), 

  new Item(2370, 65), 

  new Item(7282, 73), 

  new Item(8303, 90), 

  new Item(12328, 63), 

  new Item(12705, 14), 

  new Item(13066, 8), 

  new Item(14088, 92), 

  new Item(15320, 82), 

  new Item(15814, 60), 

  new Item(15917, 51), 

  new Item(17911, 96), 

  new Item(18061, 3), 

  new Item(18410, 56), 

  new Item(18465, 27), 

  new Item(18618, 64), 

  new Item(18871, 69), 

  new Item(19967, 45)

};                             

public int linearSearch(int catNumToFind)

{

  for (int i = 0; i < store.length; i++)

    if (catNumToFind==store[i].getCatNum())

      return store[i].getInventory();

  return -1;

}

public int recursiveLinearSearch(int catNumToFind, int startIndex)

{

  if (startIndex >= store.length)

    return -1;

  else if (store[startIndex].getCatNum()==catNumToFind)

    return store[startIndex].getInventory();

  else

    return recursiveLinearSearch(catNumToFind, startIndex+1);

}

public int binarySearch(int catNumToFind)

{

  int high = store.length-1;

  int low = 0;

  while (high >=low)

  {

    int guess = (low + high)/2;

    if (store[guess].getCatNum() == catNumToFind)

      return guess;

    else if (store[guess].getCatNum() < catNumToFind)

      low = guess+1;

    else

      high = guess-1;

  }

  return -1;

}

public int recursiveBinarySearch(int catNumToFind, int nLow, int nHigh)

{

  while (nLow <= nHigh) {

    int guess = (nLow+nHigh)/2;

    if (store[guess].getCatNum()==catNumToFind)

      return store[guess].getInventory();

    else if (store[guess].getCatNum() < catNumToFind)

      return recursiveBinarySearch(catNumToFind, guess+1, nHigh);

    else if (store[guess].getCatNum() > catNumToFind)

      return recursiveBinarySearch(catNumToFind, nLow, guess-1);

  }

 

  return -1;

}

public void setup()

{

  int[] tests = {0, 183, 184, 2370, 15320, 19967, 19968};

  System.out.println();

  System.out.println("Testing Non-Recursive Linear Search");

  System.out.println("=====================");

  for (int i = 0; i < tests.length; i++)

  {

 

    if (linearSearch(tests[i]) != -1)

      System.out.println("Catalog #"+tests[i]+" has "+linearSearch(tests[i]) + " in stock");

    else

      System.out.println("Catalog #"+tests[i]+" not found");

  }

  System.out.println();

  System.out.println("Testing Recursive Linear Search");

  System.out.println("=====================");

  for (int i = 0; i < tests.length; i++)

  {

 

    if (recursiveLinearSearch(tests[i], 0) != -1)

      System.out.println("Catalog #"+tests[i]+" has "+recursiveLinearSearch(tests[i], 0) + " in stock");

    else

      System.out.println("Catalog #"+tests[i]+" not found");

  }

  System.out.println();

  System.out.println("Testing Non-Recursive Binary Search");

  System.out.println("===================================");

  for (int i = 0; i < tests.length; i++)

  {

 

    if (binarySearch(tests[i]) != -1)

      System.out.println("Catalog #"+tests[i]+" has "+binarySearch(tests[i]) + " in stock");

    else

      System.out.println("Catalog #"+tests[i]+" not found");

  }

  System.out.println();

  System.out.println("Testing Recursive Binary Search");

  System.out.println("===============================");

  for (int i = 0; i < tests.length; i++)

  {

 

    if (recursiveBinarySearch(tests[i], 0, store.length - 1) != -1)

      System.out.println("Catalog #"+tests[i]+" has "+recursiveBinarySearch(tests[i], 0, store.length - 1) + " in stock");

    else

      System.out.println("Catalog #"+tests[i]+" not found");

  }

}

 

public void draw()

{

  //empty!

}

 