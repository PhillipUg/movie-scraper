# movie-scraper
A simple Movie and Series scraper developed with Ruby.

<!--
*** Thanks for checking out this README Template. If you have a suggestion that would
*** make this better, please fork the repo and create a pull request or simply open
*** an issue with the tag "enhancement".
*** Thanks again! Now go create something AMAZING! :D
-->

<!-- PROJECT SHIELDS -->
<!--
*** I'm using markdown "reference style" links for readability.
*** Reference links are enclosed in brackets [ ] instead of parentheses ( ).
*** See the bottom of this document for the declaration of the reference variables
*** for contributors-url, forks-url, etc. This is an optional, concise syntax you may use.
*** https://www.markdownguide.org/basic-syntax/#reference-style-links
-->
[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/phillipug/movie-scraper">
    <img src="images/movie-scraper.png" alt="Logo" width="800" height="300">
  </a>

  <h1 align="center">Movie Scraper</h1>

  <p align="center">
  	A simple Movie and Series Scraper developed with Ruby.
    <br />
    <a href="https://github.com/PhillipUg/movie-scraper"><strong>Explore the docs »</strong></a>
    <br />
    <br />
    ·
    <a href="https://github.com/PhillipUg/movie-scraper/issues">Report Bug</a>
    ·
    <a href="https://github.com/PhillipUg/movie-scraper/issues">Request Feature</a>
  </p>
</p>

<!-- TABLE OF CONTENTS -->
## Table of Contents

* [About the Project](#about-the-project)
  * [Built With](#built-with)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)
* [License](#license)

<!-- ABOUT THE PROJECT -->
## About The Project

This project was built in my free time and is intended for personal use. I scrap the movie data from [o2tvseries](www.o2tvseries.com) and [toxicwap](www.toxicwap.com).

[![Product Name Screen Shot][product-screenshot]][screenshot-url]

<!-- ABOUT THE PROJECT -->
## Installation

To use this scraper this is what you need to:
* Have ruby installed in your computer
* [Download](https://github.com/PhillipUg/movie-scraper/archive/master.zip) or clone this repo:
  - Clone with SSH:
  ```
    git@github.com:PhillipUg/movie-scraper.git
  ```
  - Clone with HTTPS
  ```
    https://github.com/PhillipUg/movie-scraper.git
  ```
* `cd` into `movie-scraper` directory and run `bundle install`
* Finally, run `bin/main.rb` in your terminal.

## How to use
When you first run this movie scraping tool it begins by prompting you to choose between movies or series by entering '1' or '2'.

```
  Choose between TV Shows (series) or Movies by entering '1' or '2': 
  ---------------------------------
  1. Movies
  2. TV Shows (series)
  --------------------------------
```

After this, if you choose 'Movies', you are prompted again.

```
   Do you wish to search by:
  ---------------------------------
  1. Index: (A-Z)
  2. Year:
  3. Title:
  ----------------------------------
``` 
If you make a selection, then you will see a full list of its contents.

### Built With
This project was built using these technologies.
* Ruby
* Nokogiri gem
* Byebug gem

<!-- CONTACT -->
## Contact

👤 **Phillip Musiime**

- LinkedIn: [Phillip Musiime](https://www.linkedin.com/in/phillip-musiime-74657019a/)
- GitHub: [PhillipUg](https://github.com/PhillipUg)
- Twitter: [@Phillip_Ug](https://twitter.com/Phillip_Ug)
- E-mail: phillipmusiime@gmail.com

<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [o2tvseries](www.o2tvseries.com)
* [toxicwap](www.toxicwap.com)

<!-- MARKDOWN LINKS & IMAGES -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/PhillipUg/movie-scraper.svg?style=flat-square
[contributors-url]: https://github.com/PhillipUg/movie-scraper/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/PhillipUg/movie-scraper.svg?style=flat-square
[forks-url]: https://github.com/PhillipUg/movie-scraper/network/members
[stars-shield]: https://img.shields.io/github/stars/PhillipUg/movie-scraper.svg?style=flat-square
[stars-url]: https://github.com/PhillipUg/movie-scraper/stargazers
[issues-shield]: https://img.shields.io/github/issues/PhillipUg/movie-scraper.svg?style=flat-square
[issues-url]: https://github.com/PhillipUg/movie-scraper/issues



## 📝 License

This project is [MIT](https://opensource.org/licenses/MIT) licensed.


