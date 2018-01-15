The idea of this gem is as follows:

When user runs the gem, s/he will be greeted with "Patterns for knitters:".
The CLI then asks the user to enter a number of pattern category they want more
info on or to type exit to exit the program.

The categories are:
1. Sweaters
2. Hats
3. Scarves
4. Cardigans
5. Blankets and throws

If the user types anything else than numbers 1:3, exit or list, the application
tells them their selection is incorrect, please type list to see the categories
or exit to exit the program.

The data is scraped off of http://www.loveknitting.com/us/knitting-patterns
using the categories mentioned above.

The idea is that when a user selects for example the sweater category (1), a
list of all sweaters should show up with the name and price.
