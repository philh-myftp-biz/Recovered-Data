from cryptography.fernet import Fernet
import pandas
import keyring

keyring.set_password('Encryption','Key',Fernet.generate_key())
cipher_suite = Fernet()

# Encrypt a message
message = "Test 123"
encrypted_message = cipher_suite.encrypt(message.encode())
print("Original string:", message)
print(encrypted_message)
decrypted = cipher_suite.decrypt(encrypted_message).decode()

print(decrypted)