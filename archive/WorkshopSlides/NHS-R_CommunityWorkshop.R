library(NHSDataDictionaRy)
nhs_data_elements()

linkScrapeR("https://www.mainard.co.uk/", TRUE)

football_results <- tableR("https://www.bbc.co.uk/sport/football/tables",
       '//*[@id="u34619006669986407"]/div/div[2]/div/div/div[2]/div/div/table',
       "Football Tables")

top_scorers <- tableR("https://www.bbc.co.uk/sport/football/premier-league/top-scorers",
                      '//*[@id="u18750818569701"]/div/div[2]/div/div[2]/div[2]/div/table')

COVID19_by_area <- tableR(url = "https://www.worldometers.info/coronavirus/", 
                          xpath = '//*[@id="main_table_countries_today"]',
                          "COVID-19_Cases")