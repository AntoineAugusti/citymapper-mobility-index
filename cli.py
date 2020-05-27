import click
import json
import csv
import os

import requests

mobility_index_url = "https://citymapper.com/api/gobot_tab/data"


@click.command()
@click.option(
    "--format",
    "-f",
    default=["json"],
    help="json or csv format",
    show_default=True,
    type=str,
)
@click.option(
    "--fname", "-n", default="data", help="output file name", type=str
)
def get_data(format, path="", fname=""):
    """
    Simple program to download Citymapper city mobility index.
    """

    data = requests.get(mobility_index_url)
    blob = json.loads(data.text)

    if format == "json":
        with open(f"{fname}.json", "w", encoding="utf-8") as f:
            json.dump(blob["datapoints"], f, ensure_ascii=False, indent=4)

    if format == "csv":
        blob = blob["datapoints"]
        with open(f"{fname}.csv", "w") as f:
            dw = csv.DictWriter(f, blob[0].keys())
            dw.writeheader()
            for row in blob:
                dw.writerow(row)


if __name__ == "__main__":
    get_data()
