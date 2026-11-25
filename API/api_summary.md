# API Summary

## What is a REST API?
A REST API is a way for two software applications to talk to each other over the web.
The client sends a request such as GET to a URL.
The server replies with data, usually in JSON format.


## HTTP Status Codes Observed
| Code | Meaning | Where I saw it |
|---|---|---|
| 200 | OK: the request was successful | /posts/1 |
| 404 | Not Found: the requested resource does not exist | /posts/99999 |

## jq Filter Used
`{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}`

| Part | What it does |
|---|---|
| `{ }` | Builds a new JSON object |
| `name:.name` | Takes the name field |
| `repos:.public_repos` | Takes public_repos and renames it to repos |
| `followers:.followers` | Takes the follower count |
| `joined:.created_at` | Takes the account creation date and renames it to joined |
