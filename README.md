# OSS-Assignment

Here we use the basic shell scripting to implement a grading system to calculate the overall grade and its subsequent letter grade. Indeed, shell is a program which prompts the user and directs the operating system to do what the user wants. Shell scripts has the ability to pass variables or parameters and behave differently. In this grading system, scripts are used that using that script or function it can refer to the variables. The parameters are used with a $ prefix symbol in order to reference them as with other shell variables. 

The script will run on Linux systems with bash as shell. First of all the user is required to change their current working directory to root directory then the user should the read and write permission " chmod 777 gradingSystem.sh or chmod 755 gradingSystem.sh ". This will enable the user to run the script and will write the input as well as the grades in number and alphabet.

The VERBOSE variables are set off by default however, if its set on then it will echo every command line before shell variables have been evaluated. The compilation command will fail if the given conditions are false or in a simple words the program will terminate however, it will continue if the conditions are true.

The input could be taken from the user by prompting a message to the user for example post running the command, the program will ask user to input the student name which in backend the student name will be stored in a variable names "Sname". same case applied for all the inputs being taken from the user.

There are some constraints used which the program will only accept the correct data type. The student name should be only string and incase the numbers are entered then the system will not accept rather will reject and will prompt the user to use a proper name as well as for the marks. The marks only accepts integer and or float values.  

Each time the user run the program and enter the required inputs, the new data will be saved automatically in the csv file named "OSSGrades.csv.
