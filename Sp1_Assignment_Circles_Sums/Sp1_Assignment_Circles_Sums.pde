int[] numbers = {5, 10, 15, 20, 25};
String name = "Sp1 test project";

void setup() {
  size(700, 200);
  background(220);
  textSize(20);
  
  // Call a custom method to display the name and sum of numbers
  displayInfo(name, numbers);
}

void draw() {
  // Use a for-each loop to draw circles based on the numbers array
  for (int num : numbers) {
    ellipse(num * 10, height / 2+10, num, num);
  }
}

// Custom method to display the name and sum of numbers
void displayInfo(String name, int[] nums) {
  fill(0);
  text("Name: " + name, 20, 30);
  
  int sum = calculateSum(nums);
  text("Sum of numbers: " + sum, 20, 60);
  
  // Used if-else statements to provide additional information based on the sum,
  // and boolean operators to provide additional information based on the sum.
  if (sum < 50 && sum > 10) {
    text("Sum is between 10 and 50", 20, 90);
  } else if (sum >= 50 || nums.length > 5) {
    text("Sum is greater than or equal to 50, or the array length is greater than 5", 20, 90);
  } else {
    text("Sum is less than or equal to 10", 20, 90);
  }
}

// Custom method to calculate the sum of an integer array
int calculateSum(int[] nums) {
  int sum = 0;
  for (int num : nums) {
    sum += num;
  }
  return sum;
}
