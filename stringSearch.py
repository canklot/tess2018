import io
with io.open("resultA.html",'r',encoding='utf8') as f:
    text = f.read()
resultStatsCounter=1
lastSeachedIndex=0
while resultStatsCounter<=2:
 resultStartsIndex=text.find("resultStats",lastSeachedIndex+10)
 lastSeachedIndex=resultStartsIndex
 resultStatsCounter=resultStatsCounter+1
sonucSayisiStart=resultStartsIndex+11
sonucSayisiStop=text.find("sonuç bulundu")
print(text[sonucSayisiStart:sonucSayisiStop])
