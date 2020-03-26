source venv/bin/activate

cd data
rm *.html

wget -O barcelona.html https://citymapper.com/cmi/barcelona
wget -O berlin.html https://citymapper.com/cmi/berlin
wget -O birmingham.html https://citymapper.com/cmi/birmingham
wget -O boston.html https://citymapper.com/cmi/boston
wget -O brussels.html https://citymapper.com/cmi/brussels
wget -O chicago.html https://citymapper.com/cmi/chicago
wget -O copenhagen.html https://citymapper.com/cmi/copenhagen
wget -O dc.html https://citymapper.com/cmi/dc
wget -O df.html https://citymapper.com/cmi/df
wget -O hamburg.html https://citymapper.com/cmi/hamburg
wget -O hongkong.html https://citymapper.com/cmi/hongkong
wget -O istanbul.html https://citymapper.com/cmi/istanbul
wget -O la.html https://citymapper.com/cmi/la
wget -O lisbon.html https://citymapper.com/cmi/lisbon
wget -O london.html https://citymapper.com/cmi/london
wget -O lyon.html https://citymapper.com/cmi/lyon
wget -O madrid.html https://citymapper.com/cmi/madrid
wget -O manchester.html https://citymapper.com/cmi/manchester
wget -O melbourne.html https://citymapper.com/cmi/melbourne
wget -O milan.html https://citymapper.com/cmi/milan
wget -O monaco.html https://citymapper.com/cmi/monaco
wget -O montreal.html https://citymapper.com/cmi/montreal
wget -O moscow.html https://citymapper.com/cmi/moscow
wget -O nyc.html https://citymapper.com/cmi/nyc
wget -O paris.html https://citymapper.com/cmi/paris
wget -O philadelphia.html https://citymapper.com/cmi/philadelphia
wget -O randstad.html https://citymapper.com/cmi/randstad
wget -O rhineruhr.html https://citymapper.com/cmi/rhineruhr
wget -O rome.html https://citymapper.com/cmi/rome
wget -O saopaulo.html https://citymapper.com/cmi/saopaulo
wget -O seattle.html https://citymapper.com/cmi/seattle
wget -O seoul.html https://citymapper.com/cmi/seoul
wget -O sf.html https://citymapper.com/cmi/sf
wget -O singapore.html https://citymapper.com/cmi/singapore
wget -O stockholm.html https://citymapper.com/cmi/stockholm
wget -O stpetersburg.html https://citymapper.com/cmi/stpetersburg
wget -O sydney.html https://citymapper.com/cmi/sydney
wget -O tokyo.html https://citymapper.com/cmi/tokyo
wget -O toronto.html https://citymapper.com/cmi/toronto
wget -O vancouver.html https://citymapper.com/cmi/vancouver
wget -O vienna.html https://citymapper.com/cmi/vienna

cd ..
python main.py
