# Bullet Scraper

This project's goal is to web-scrape bullets (primarily EPRs/awards, could not find OPR bullets) from various internet sources. The sources are notionally recorded in `bullet-sites.txt`:
- http://www.eprbullets.com/
- http://www.eprbulletsafsc.com/
- http://www.airforcewriter.com/epr_bullets.htm
- https://www.afeprbullets.com/
- https://afbulletsafe.com/Display/Tag/EPR

The scrapers are written in Python, using Jupyter notebooks for ease of explorative development. I needed to create a custom scraper for each site, since each of these websites are structured differently. In retrospect, some of the code can be refactored into classes/inheritances for reusability. Since there were only 5 websites I looked at, I didn't bother, but if I had to scrape from many more sources, I would change the code for sure.

After scraping all the bullets, I ran them all through a perl script to uniformly format them and merge them into one final text file output. 

Several of the source websites had bullets organized into categories. I wanted to keep this project simple and just scrape a dumb list of all bullets. In the unlikely event that this becomes a more serious effort, some work can be done to cross-link categories between the different sites and include tags for each bullet based on content.
