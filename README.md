The ultimate goal here is to build a digital dashboard for sustainable cities. We’re focusing on a few interesting contributing bits to this effort, using LA as an example:

- Describe framework for a sustainable city index based on **Ocean Health Index** a la [sustainsb.github.io](http://sustainsb.github.io).

  ![](https://sustainsb.github.io/images/scores_flower-plot_sbcounty.png)
  
- Assign weights on relative importance of goals using **Twitter** to assess social value.

  - [twitterSearch.R](./twitterSearch.R)

- Calculate scores automatically using **Travis Continuous Integration**, using [sustainsb.github.io](http://sustainsb.github.io) fetching USGS groundwater measurements as an example.
- Tweak rstudio/leaflet to allow for **choropleth maps** with select dropdown list, rather than simple [show/hide layers](http://rstudio.github.io/leaflet/showhide.html).

We’ll populate these into the [LA public trello board of projects]( https://trello.com/b/8TNcO49a/d4d-city-of-la-project-board) to recruit fellow city data scientist enthusiasts.
