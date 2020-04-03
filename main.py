import csv
import datetime
import json

today = datetime.date.today().strftime("%Y-%m-%d")
data = []
with open(f"data/data-{today}.json") as f:
    parsed = json.load(f)

    regions = {}
    for region in parsed["regions"]:
        regions[region["id"]] = region["name"]

    daily = [p for p in parsed["datapoints"] if p["name"] == "one_day"]
    datapoints = sorted(daily, key=lambda k: f"{regions[k['region_id']]}-{k['date']}")
    for datapoint in datapoints:
        city = regions[datapoint["region_id"]]
        data.append([city, datapoint["date"], datapoint["value"]])

with open("data.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(["city", "date", "percentage"])
    writer.writerows(data)
