#!/usr/bin/env python3
import requests
#change name of coin in the response variable for the current price of that coin, look at the url for more options,  can get data for multiple currencies as well.
response = requests.get('https://api.coingecko.com/api/v3/coins/cardano.json')
data = response.json()
rate = data["market_data"]["current_price"]["usd"]
rate = "{:.3f}".format(rate)
#print("🪙:$"+str(rate)+"")
print("💸"+str(rate)+"")

