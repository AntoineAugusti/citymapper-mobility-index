import glob
import re
import csv

from bs4 import BeautifulSoup


class Parser(object):
    def __init__(self, html):
        super(Parser, self).__init__()
        self.content = BeautifulSoup(html, "html.parser")

    def values(self):
        def clean_values(matches):
            day = matches[0]
            if int(matches[0]) < 10:
                day = "0" + matches[0]

            return (f"2020-03-{day}", int(matches[1]))

        res = []
        for item in self.content.findAll("td"):
            matches = re.findall(r"(\d+)(?:st|nd|rd|th).*>(\d+)%", str(item))
            if len(matches) == 0:
                continue
            res.append(clean_values(matches[0]))
        return res

    def city(self):
        return self.content.findAll("h2")[0].text


data = []
for filename in sorted(glob.glob("data/*.html")):
    with open(filename) as f:
        html_content = f.read()
    parsed = Parser(html_content)
    for day, percentage in parsed.values():
        data.append([parsed.city(), day, percentage])

with open("data.csv", "w") as f:
    writer = csv.writer(f)
    writer.writerow(["city", "date", "percentage"])
    writer.writerows(data)
