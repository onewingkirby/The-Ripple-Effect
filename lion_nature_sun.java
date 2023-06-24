import java.util.ArrayList;

public class TheRippleEffect {

    public static void main(String[] args) {

        // Initialize empty ArrayList
        ArrayList<Integer> rippleEffect = new ArrayList<>();

        // Iterate through 2000 lines of code 
        for (int i = 0; i < 2000; i++) {

            // Add i to the list
            rippleEffect.add(i);

            // For loop within the for loop to 
            // generate a ripple effect
            for (int j = 0; j < i; j++) {
                rippleEffect.add(i - j);
            }
        }

        // Print size of ripple effect
        System.out.println(rippleEffect.size());
    }
}