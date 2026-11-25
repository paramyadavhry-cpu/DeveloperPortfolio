import requests
import json

url = "https://api.github.com/users/paramyadavhry-cpu"
data = requests.get(url).json()

print("Name:", data.get("name"))
print("Public Repos:", data.get("public_repos"))
print("Followers:", data.get("followers"))

with open("output.json", "w") as f:
    json.dump(data, f, indent=4)
