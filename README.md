Minnano Organic
====

Minnano Organic is a platform of fresh salad delivery service for organic food lovers. 
*Designed as a demo site for personal practice.

<a href="https://minnano-organic.herokuapp.com/" target="_blank">https://minnano-organic.herokuapp.com/</a>

## Development Environment

- Ruby on Rails
- Solidus(Rails gem)
- MySQL

## 5 steps to install

1. Install ImageMagik through Homebrew (For product image upload)<br>
<code>brew install imagemagick</code>

2. Folk and clone this project to your PC.

3. Install libraries<br>
```gem install bundler```<br>
```brew install libxml2```<br>
```bundle config build.nokogiri --use-system-libraries --with-xml2-include=$(brew --prefix libxml2)/include/libxml2```<br>
```bundle install```

4. Create necessary configuration files and migrations.<br>
```bundle exec rails g spree:install```<br>
```bundle exec rails g solidus:auth:install```<br>

5. Preview by rails server<br>
```bundle exec rails s```
