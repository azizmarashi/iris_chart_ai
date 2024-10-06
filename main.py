import requests
import time

response = requests.get("https://api.ipify.org")

while True:
    print("Your IP:", response.text)
    time.sleep(3)