import io

def searchHtml(dosyaname):
    with io.open(dosyaname, 'r', encoding='utf8') as f:
        text = f.read()
    resultStatsCounter = 1
    lastSeachedIndex = 0
    while resultStatsCounter <= 2:
        resultStartsIndex = text.find("resultStats", lastSeachedIndex + 10)
        lastSeachedIndex = resultStartsIndex
        resultStatsCounter = resultStatsCounter + 1
    sonucSayisiStart = resultStartsIndex + 22
    sonucSayisiStop = text.find("sonuç bulundu")
    result=(text[sonucSayisiStart:sonucSayisiStop])
    return result
print("a)"+ searchHtml("resultA.html"))
print("b)"+ searchHtml("resultB.html"))
print("c)"+ searchHtml("resultC.html"))
