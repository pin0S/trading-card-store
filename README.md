# User Stories

**General User**

- As a user I can instant message/chat with a seller to ask them questions about an item to enhance my confidence
- As a user I want to be notified of when a I have an unread message in my inbox, in order to know when someone has responded to my message
- As a user, I want to be able to access my account information and update it as need be so that I can maintain my account
-As a user, I want to create an account in order to become a seller and a buyer on the marketplace
- As a user, I want to have a secure login that requires an email and password
- As a user, I want to be able to log out of my account to protect any one accessing my machine and selling or buying cards through my account
- As a user I can see all the cards for sale on the index page so that I can browse without loggin in

**Buyers**
- As a user I can inspect individual cards (show page) to get description details from the index page so that I can feel confident in what I am purchasing
- As a user I can browse cards buy critera (rookies, holgraphic, graded, team) so that I can streamline my experience
- As a user I can securely buy cards (stripe) so that I can add to my collection
- As a user I want to be able to search for cards, in order to quickly find the cards I am looking for

**Sellers**
- As a user I can sell cards so that I can make money
- As a user I can images of my cards for sale so that I can make buyers feel confident
- As a user I can sell a edit my card if need be to make selling more convenient 
- As a user I do not want to see the option to purchase my own cards
- As a user I want to be able to delete my card so that I can change my mind about selling it prior to a sale

**Sprinkle Stories**
- As a user I can do all of the above on mobile first so that I don't need to be on my computer

# Problem that needs solving & why it need solving

Currently there are no dedicated marketplaces to sell basketball cards. Sellers and buyers are forced to user marketplaces like Ebay, Gumtree or Auction houses to buy and sell basketball cards. Meaning that the buyers are forced to check all these locations for the cards they want and the sellers therefore lose out on demand as buyers might not know that certain cards are listed in certain locations. 

This means basketball cards can get lost in the sea of other items on these marketplaces and the user experience isn't built to highlight the unique features of each card.

Thus this problem needs to be solved so that the buying, selling and finding of cards can be centralised in one place. This means that sellers can get the best price for their cards and buyers can easily find the cards they are looking for. 

This app aims to solve this issue by providing basketball card collectors with a two sided marketplace to find, buy and sell basketball cards.

# Heroku: 
https://hardcourt-collectors.herokuapp.com/

# Github: 
https://github.com/pin0S/trading-card-store

# Models (active record associations)

# Description 

## Purpose

The purpose of this marketplace is to provide a free and accessible platform for basketball card collectors to be able to find, buy and sell basketball cards. 

## Functionality / features

**Acounts:** Users can create free accounts. This account will give the user access to full site functionality without it the user can only browser items, they must be logged in to purchases or sell cards. 

If a User attempts to sell or buy a card without an account they will be prompted to log in or sign up for an account. 

Once a user has an account they can edit their details in the future using the option in the account page.

**Cards:** Any logged-in users can sell cards. Cards, have images and other important metadata that must be entered before the card is submitted ot the site.

Logged-in users can also buy cards. 

**Messaging:** Users who are logged-in are able to message the seller of a particular card from a link on the cards listing page. Users are notified when they have a new message with a coloured tab in the nav-bar or in the inbox page with an unread notification with the number of unread messages from a user.

**Pagination:** To speed up the loading of the site and so that users are not having to infinitely scroll through the all the available cards on the site pagination ensures only 12 cards per page are loaded.

**Tracking:** Users who are logged-in can keep track of the cards the currently have for sale, the cards they have purchased and the cards they have sold in their account page. This is all availablt through the accounts page.

**Search/filtering:** Users can search for cards based an queries contained in the title or the description of a card. In the future I would like to implement it so it can also look through the manufacture, team and season.

Users can also filter by price and new ascending and descending. This allows users to better search for cards within their budget and also to quickly see what new cards have been added to the site. 

## Sitemap


## Screenshots


## Target audience

The target audience for this application is basketball card collectors.

## Tech stack (e.g. html, css, deployment platform, etc)

**Front-end:** HTML5, CSS3, SCSS, Embedded Ruby, Bootstrap, Javascript.

**Back-end:** Ruby 2.7.1, Ruby on Rails 6.0.3.4., Postgresql

**Deployment:** Heroku.

**Utilities:** Stripe, AWS S3.

**DevOps:** Git, Github, VS Code, Bundler, Balsamiq, Trello