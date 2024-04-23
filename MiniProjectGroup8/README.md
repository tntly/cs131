# Rhythm of Success: Analyzing Trends in East Asian Music Popularity

CS 131 Final Project - Fall 2023 at SJSU

## Description

This repository contains data and analysis on top artists and tracks from various East Asian genres sourced from the Spotify API. The analysis aims to explore trends, characteristics, and factors influencing the popularity of songs, as well as identifying popular artists and enduring tracks over time.

### Dataset Metadata
The dataset consists of two main parts: top artists and top tracks from seven different `query genres` including Chinese, Japanese, Korean, K-pop, J-pop, J-idol, and J-dance. Each track entry includes features such as song name, album name, artist name, popularity metric, release date, duration, explicit status, and query genre.

## Tasks
- Task 1: Explore the `duration_ms` and `explicit` columns
  - Does a song's length influence its chance of becoming popular?
  - What about the song's content (explicit vs. non-explicit)?
- Task 2: Explore the `artist_name` and `release_date` columns
  - Who are the popular artists from the past few years?
  - Which songs have remained popular over time?

## Getting Started

### Tools Used
For this project, various Unix command-line tools were employed for data manipulation, including awk, sed, and shell scripts.

### Executing program

- Please make sure all of the following files are in the same folder:
  - `east_asia_top_tracks.csv`
  - `task0.sh`
  - `task1.sh`
  - `task2.sh`
* Please run the scripts in order from 0 to 2
```
bash task[0-2].sh
```

## Authors

* Tien Ly
* Jewon Yeon
* Divij Gupta