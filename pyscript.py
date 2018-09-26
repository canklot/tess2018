import io
with io.open("out.txt",'r',encoding='utf8') as f:
    text = f.read()

for x in range(len(text)):
 if text[x]=='&':
  text=text[:x] + ' ' + text[x+1:]
 if text[x]=='4':
  text=text[:x] + ' ' + text[x+1:]
 if text[x]=='|':
  text=text[:x] + ' ' + text[x+1:]
 if text[x]==':':
  text=text[:x] + ' ' + text[x+1:]
 if text[x]=='\n':
  text=text[:x] + '+'+ text[x+1:]
 if text[x]=='“':
  text=text[:x] + '+'+ text[x+1:]
 if text[x]=='İ':
  text=text[:x] + 'i'+ text[x+1:]
 if text[x]=='ı':
  text=text[:x] + 'i'+ text[x+1:]
 if text[x]=='"':
  text=text[:x] + ' '+ text[x+1:]
 if text[x]==' ':
  text=text[:x] + '+' + text[x+1:]
 if text[x]=='ç':
  text=text[:x] + 'c'+ text[x+1:]
 if text[x]=='ğ':
  text=text[:x] + 'g' + text[x+1:]
 if text[x]=='ş':
  text=text[:x] + 's' + text[x+1:]
 if text[x]=='ó':
  text=text[:x] + 'o' + text[x+1:]
 if text[x]=='Ô':
  text=text[:x] + 'o' + text[x+1:]
 if text[x]=='ö':
  text=text[:x] + 'o' + text[x+1:]
 if text[x]=='ü':
  text=text[:x] + 'u' + text[x+1:]
# hatalı karakterleri boşluk yapma sona boşluk ekle google ın burayı doldur diye ratma ayarı var onu şu 3gene koyabilirim
#şıkları aratman lazım
# process Unicode text
print(text)
with io.open("srch.txt",'w',encoding='utf8') as f:
    f.write(text)
