import json
import urllib.request

URL = "https://jsonplaceholder.typicode.com/users"

# Fetch data from the API
with urllib.request.urlopen(URL) as response:
    users = json.load(response)

# Save the full response to a JSON file
with open("users.json", "w") as f:
    json.dump(users, f, indent=2)

# Print a short summary
print(f"Fetched {len(users)} users\n")
for user in users:
    print(f"{user['id']}. {user['name']} - {user['email']}")

