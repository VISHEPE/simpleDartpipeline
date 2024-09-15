void main() {
  // Sample data
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Pipeline stages
  List<int> pipelineResult = numbers
      .where((number) => number.isEven) // Stage 1: Filter even numbers
      .map((number) => number * number)  // Stage 2: Square each number
      .toList();                         // Convert to a list

  // Stage 3: Sum the results
  int sumOfSquares = pipelineResult.reduce((a, b) => a + b);

  print("Pipeline Result: $pipelineResult");
  print("Sum of Squares: $sumOfSquares");
}
