import urllib.request
url = "https://pastebin.com/raw/ZuK9GmZT"
response = urllib.request.urlopen(url)
data = response.read()
text = data.decode('utf-8')
print(text)
