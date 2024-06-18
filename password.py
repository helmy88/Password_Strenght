import re

def check_password_strength(password):
    # Minimum length check
    if len(password) < 8:
        return "Password is too short (minimum length is 8 characters)."

    # Check for presence of uppercase, lowercase, digits, and special characters
    has_upper = any(c.isupper() for c in password)
    has_lower = any(c.islower() for c in password)
    has_digit = any(c.isdigit() for c in password)
    has_special = re.search(r'[!@#$%^&*()\-_=+{};:,<.>\\|/?~]', password)

    # Combine checks
    if not has_upper:
        return "Password should contain at least one uppercase letter."
    if not has_lower:
        return "Password should contain at least one lowercase letter."
    if not has_digit:
        return "Password should contain at least one digit."
    if not has_special:
        return "Password should contain at least one special character (!@#$%^&*()-_=+{};:,<.>\\|/?~)."

    # Additional checks (optional)
    common_passwords = ["password", "123456", "qwerty", "letmein"]  # Example common passwords list
    if password.lower() in common_passwords:
        return "Password is too common and easy to guess."

    # If all checks pass
    return "Password is strong."

# Function to print ASCII art once code is launched
def print_ascii_art():
    ascii_art = """
    .__ .__. __. __..  . _, .__ .__       __..___..__ .___.__ .  ..___.
    [__)[__](__ (__ |  ||.| [__)|  \ ___ (__   |  [__)[__ [ __|__|  |  
    |   |  |.__).__)|/\||_| |  \|__/     .__)  |  |  \[___[_./|  |  |  
    
    Developed by Perthlis
    """
    print(ascii_art)

# Example usage:
if __name__ == "__main__":
    print_ascii_art()

    while True:
        password = input("Enter your password: ")

        # Check password strength
        strength = check_password_strength(password)
        print(strength)

        # Break out of the loop if the password is strong
        if strength == "Password is strong.":
            break
