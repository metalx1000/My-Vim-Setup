import urllib.request

url = "https://i3.ytimg.com/vi/gq-jWftY0SU/hqdefault.jpg"
file_name = "my_img.jpg" 
urllib.request.urlretrieve(url, file_name)
