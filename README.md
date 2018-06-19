# Time to Read Plugin

A liquid tag for Jekyll to indicate the time it takes to read an article.

[![jekyll-time-to-read build status](https://api.travis-ci.org/gjtorikian/jekyll-time-to-read.png?branch=master)](https://travis-ci.org/gjtorikian/jekyll-time-to-read)

## Setting up

Add the following to your site's `_config.yml` file

```yml
plugins:
  - jekyll-time-to-read
```

## Usage

Place the following tag somewhere within your layout:

`{{ content | reading_time_as_i }}`

This generates the reading time as a number, like "4 minutes" or "less than 1 minute."

Alternatively, you can choose to render numbers less than 10 as a string:

`{{ content | reading_time_as_s }}`

This generates the reading time as like "four minutes" or "less than one minute."
