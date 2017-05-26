The ultimate goal here is to build a digital dashboard for sustainable cities. We’re focusing on a few interesting contributing bits to this effort, using LA as an example:

- Describe framework for a sustainable city index based on **Ocean Health Index** a la [sustainsb.github.io](http://sustainsb.github.io).

  ![](https://sustainsb.github.io/images/scores_flower-plot_sbcounty.png)
  
- Assign weights on relative importance of goals using **Twitter** to assess social value.

  - [twitterSearch.R](./twitterSearch.R)

- Describe candidate **data layers** for Los Angeles and how they could be combined from:

  - sources:
  
    - [data.lacity.gov](http://data.lacity.gov)
    - [geohub.lacity.org](http://geohub.lacity.org)
    - [gisdata.scag.ca.gov](http://gisdata.scag.ca.gov)
    - [dashboard.lamayor.org](http://dashboard.lamayor.org)
    - [pLAn.lamayor.org](http://plan.lamayor.org)
    
  - layers:
  
    - **Greenhouse Gases** from report 
    [Southern California Association of Governments (SCAG) Regional Greenhouse Gas Emissions Inventory and Reference Case Projections, 1990-2035](http://sustain.scag.ca.gov/Pages/ClimateEconomicDevProject.aspx)
    
      - use [ropensci/tabulizer](https://github.com/ropensci/tabulizer) to extract table from pdf
      
      - context: [GHG Protocol for Cities](http://www.ghgprotocol.org/greenhouse-gas-protocol-accounting-reporting-standard-cities)
      
    - **Transportation** from report [SCAG Regional Travel Demand Model and 2012 Model Validation](http://www.scag.ca.gov/DataAndTools/Pages/TransportationModels.aspx): could map table of values by LA regions

- Calculate scores automatically using **Travis Continuous Integration**, using [sustainsb.github.io](http://sustainsb.github.io) fetching USGS groundwater measurements as an example.

- Tweak rstudio/leaflet to allow for **choropleth maps** with select dropdown list, rather than simple [show/hide layers](http://rstudio.github.io/leaflet/showhide.html).

We’ll populate these into the [LA public **Trello board** of projects]( https://trello.com/b/8TNcO49a/d4d-city-of-la-project-board) to recruit fellow city data scientist enthusiasts.
