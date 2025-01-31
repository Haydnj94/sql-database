import requests
from bs4 import BeautifulSoup

def scrape_average_rental_prices(df_neighbourhoods):
    # Initialize an empty dictionary to store neighbourhood names and their average prices
    average_prices = {}
    
    # Iterate over the rows of the DataFrame
    for index, row in df_neighbourhoods.iterrows():
        # Extract neighbourhood group and neighbourhood from each row
        neighbourhood_group = row['neighbourhood_group']
        neighbourhood = row['neighbourhood']
        
        # Construct the URL dynamically using the neighbourhood group and neighbourhood
        url = f"https://www.propertynest.com/for-rent/{neighbourhood_group}/{neighbourhood}/"
        
        # Make a GET request to the URL
        response = requests.get(url)
        # print(url)
    
        # Check if the request was successful
        if response.status_code == 200:
            soup = BeautifulSoup(response.content, 'html.parser')
            price_elements = soup.find_all('span', class_='avg-rental-list__result')
            
            if price_elements:
                prices = [price_element.get_text(strip=True) for price_element in price_elements]
                average_prices[neighbourhood] = prices
            else:
                print(f"Price not found for {neighbourhood} in group {neighbourhood_group}, moving on.")
                continue 

    return average_prices

def calculate_median_rental_prices(average_prices):

    # Initialize an empty list to store the neighbourhood and its corresponding median price
    neighbourhood_data = []
    
    # Iterate through the dictionary to calculate the median price for each neighbourhood
    for neighbourhood, prices in average_prices.items():
        # Clean the prices and convert them to float, while handling any invalid prices (like 'N/A')
        cleaned_prices = []
        for price in prices:
            try:
                cleaned_price = float(price.replace('$', '').replace(',', ''))
                cleaned_prices.append(cleaned_price)
            except ValueError:
                continue
        
        # Calculate the median price
        if cleaned_prices:  # Ensure there are valid prices to calculate the median
            median_price = statistics.median(cleaned_prices)
        else:
            median_price = None  # If there are no valid prices, set median as None
        
        # Add the neighbourhood and its median price to the list
        neighbourhood_data.append({'neighbourhood': neighbourhood, 'median_price': median_price})
    
    # Create the DataFrame from the list
    df_median_prices = pd.DataFrame(neighbourhood_data)
    
    df_median_prices.dropna(inplace = True)
    
    df_median_prices.to_csv('neighbourhood_prices.csv', index=False)

    return df_median_prices