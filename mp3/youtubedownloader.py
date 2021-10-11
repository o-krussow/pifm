import os

f = open("ydown", "r")
content = f.read()
f.close()

for link in content.split("\n"):
    print("youtube-dl -x --audio-quality 0 -f bestaudio --audio-format mp3 '"+link+"' ; ")
