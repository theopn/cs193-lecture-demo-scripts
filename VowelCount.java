public class VowelCount {
    public static void main(String[] args) {
        String input = "Hello Everyone"; // 6 vowels in the string
        int output = countVowels(input);
        System.out.printf("%s has %d vowels\n", input, output);
    }

    public static int countVowels(String input) {
        int vowelCount = 0;
        for (int i = 0; i < input.length(); i++) {
            char currentChar = input.charAt(i);
            if (currentChar == "a" || currentChar == "e" || currentChar == "i"
                    || currentChar == "o" || currentChar == "u") {
                vowelCount ++;
            }
        }
        return vowelCount;
    }
}
