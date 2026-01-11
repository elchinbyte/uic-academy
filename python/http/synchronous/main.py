import time
import requests
from config import GITHUB_TOKEN

headers = {
    "Authorization": f"token {GITHUB_TOKEN}"
}

urls = [
    "https://api.github.com/user",
    "https://api.github.com/user/repos",
    "https://api.github.com/user/followers",
]

start = time.perf_counter()

responses = []
for url in urls:
    r = requests.get(url, headers=headers)
    responses.append(r.json())

end = time.perf_counter()

print(f"Sync load time: {end - start:.3f} seconds")