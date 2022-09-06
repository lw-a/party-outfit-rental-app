# 👗 Oshare

Online marketplace for booking outfits for special events.

_DROP SCREENSHOT HERE_
<br>
App home: https://oshare-fit.herokuapp.com/
   

## Getting Started
### Setup

Install gems
```
bundle install
```
Install JS packages
```
yarn install
```

### ENV Variables
Create `.env` file
```
touch .env
```
Inside `.env`, set these variables. For any APIs, see group Slack channel.
```
CLOUDINARY_URL=your_own_cloudinary_url_key
```

### DB Setup
```
rails db:create
rails db:migrate
rails db:seed
```

### Run a server
```
rails s
```

## Built With
- [Rails 7](https://guides.rubyonrails.org/) - Backend / Front-end
- [Stimulus JS](https://stimulus.hotwired.dev/) - Front-end JS
- [Heroku](https://heroku.com/) - Deployment
- [PostgreSQL](https://www.postgresql.org/) - Database
- [Bootstrap](https://getbootstrap.com/) — Styling
- [Figma](https://www.figma.com) — Prototyping

## Team Members
- [Adam Hemming](https://github.com/lw-a)
- [Malene Thisgaard](https://github.com/mthisgaard)
- [Andre Paul Bauer](https://github.com/BauerAndre)
- [Nikki Carlos](https://github.com/nrcrls)

## Project Management && Contributing
- [Trello](https://trello.com/b/Ynq2SMNl/party-outfit-rental-app)
- [DB Schema](https://kitt.lewagon.com/db/73367)

## Acknowledgements
Inspired by Airbnb's online marketpace.
