#!/usr/bin/env python3

import urllib.parse

target = "clash"
converter_url = "http://127.0.0.1:25500"

node_url = ""
config_url = ""

node_url = urllib.parse.quote(node_url, safe="")
config_url = urllib.parse.quote(config_url, safe="")

subscription_url = f"{converter_url}/sub?target={target}&url={node_url}&config={config_url}"

print(subscription_url)
