
# Password Strength Analyzer

This script checks the strength of a password based on specified criteria including length, character types, and commonality.

How to Use:

1. Requirements:
   - Python 3.x installed on your system.

2. Instructions:
   - Clone or download the repository to your local machine.

   - Navigate to the directory containing the `password_strength_analyzer.py` file.

   - Open a terminal or command prompt.

   - Run the script by typing the following command:

     ```
     python password_strength_analyzer.py
     ```

3. Input:
   - Enter a password when prompted.

4. Output:
   - The script will analyze the password based on the following criteria:
     - Minimum length of 8 characters.
     - Presence of at least one uppercase and one lowercase letter.
     - Presence of at least one digit and one special character.
     - It also checks if the password is not too common.

   - It will provide feedback on the strength of the password:
     - "Password is too short (minimum length is 8 characters)."
     - "Password should contain at least one uppercase letter."
     - "Password should contain at least one lowercase letter."
     - "Password should contain at least one digit."
     - "Password should contain at least one special character (!@#$%^&*()-_=+{};:,<.>\\|/?~)."
     - "Password is too common and easy to guess."
     - "Password is strong." (if all criteria are met)
