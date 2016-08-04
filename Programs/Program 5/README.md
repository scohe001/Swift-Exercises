4.19 PROGRAM 5: Loops - Drawing a Tree
----
<br>

	#include <iostream>
	using namespace std;

	int main() {

	    // Draw leaves
	    cout << "  *  " << endl;
	    cout << " *** " << endl;
	    cout << "*****" << endl;
	
	    // Draw trunk
	    cout << " *** " << endl;
	    cout << " *** " << endl;
	    cout << " *** " << endl;
	    cout << " *** " << endl;
	
	    return 0;
	}
	
1. Modify the above program to ask the user to specify a number of tree trunk levels (“Enter trunk height: “), then use a loop to draw that many levels. *Testing suggestion: If the user specifies 4 tree trunk levels, then the original tree should be drawn.*

2. Modify the program again to ask the user to specify a number of tree trunk *’s per level ("Enter trunk width: “), then use a loop to draw that many *’s per level. You’ll need to use a nested loop in which the inner loop draws the *’s, and the outer loop iterates a number of times equal to the number of tree trunk levels.

3. Modify the program so that it only accepts odd numbers for the trunk width. Use a loop to continue prompting the user for a width until the number is odd.

4. Modify the program to ask the user to specify a number of tree leaves levels (“Enter leaves width: “), then use a nested loop to draw that many levels.

You’ll need two inner loops for drawing the leaves: one for outputting spaces and one for outputting *’s. The outer loop iterates a number of times equal to the number of tree leaves levels.

The top level of the leaves must have at least one *.

You will have to modify this as well to only accept odd numbers for the number of leaves.

Here is an example program execution (user input is in italics it for clarity):

	Enter trunk height: *10*
	Enter trunk width: *5*
	Enter leaves width: *11*
	
	     *
	    ***
	   *****
	  *******
	 *********
	***********
	   *****
	   *****
	   *****
	   *****
	   *****
	   *****
	   *****
	   *****
	   *****
	   *****
	   
Here is an example program execution (user input is highlighted here for clarity). Note that the trunk is misaligned with the leaves when the trunk and leaves widths are neither both odd nor both even:

	Enter trunk height: *5*
	Enter trunk width: *2*
	Enter leaves width: *5*
	  *
	 ***
	*****
	  **
	  **
	  **
	  **
	  **

Here is an example program execution (user input is highlighted here for clarity). Note that the top of the leaves is misaligned when the leaves width is even.:

	Enter trunk height: *3*
	Enter trunk width: *3*
	Enter leaves width: *6*
	   *
	  **
	 ****
	******
	 ***
	 ***
	 ***