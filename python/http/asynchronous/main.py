import time
import asyncio
import aiohttp
from config import GITHUB_TOKEN

headers = {
    "Authorization": f"token {GITHUB_TOKEN}"
}

urls = [
    "https://api.github.com/user",
    "https://api.github.com/user/repos",
    "https://api.github.com/user/followers",
]

async def fetch(session, url):
    async with session.get(url, headers=headers) as response:
        return await response.json()

async def main():
    start = time.perf_counter()

    async with aiohttp.ClientSession() as session:
        tasks = [fetch(session, url) for url in urls]
        results = await asyncio.gather(*tasks)

    end = time.perf_counter()
    print(f"Async load time: {end - start:.3f} seconds")

asyncio.run(main())