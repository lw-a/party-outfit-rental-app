# 👗 Oshare

Online marketplace for booking outfits for special events.
<br>
<img src="https://user-images.githubusercontent.com/107089457/188595617-006b8176-9f5e-488d-afa7-3a75c7577d5b.png" width="300"> <img src="https://user-images.githubusercontent.com/107089457/188595609-3433f8a3-d091-4a7c-87ea-c8927d44c79c.png" width="300"> <img src="https://user-images.githubusercontent.com/107089457/188595599-fe7452ed-ea96-412d-816b-4ce66a4d622e.png" width="300"> <img src="https://user-images.githubusercontent.com/107089457/188595613-a99f6887-a6ac-4500-b8ad-6c29edd2fae5.png" width="300">
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
