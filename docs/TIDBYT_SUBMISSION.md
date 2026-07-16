# Tidbyt Community submission

## App name

FreshAir Live

## Short description

Live air quality with pollutant insights and a 12-hour outlook.

## Long description

FreshAir Live presents current local air quality in three glanceable Tidbyt screens. See the current OpenWeather air-quality level, the dominant pollutant and its concentration, a color-coded health gauge, a cautious likely-source description, and a +6-hour and +12-hour outlook.

Users configure an OpenWeather API key, latitude, longitude, display title, animation preference, and optional mountain marker.

## Data source

OpenWeather Air Pollution API

## Author

Chris Anderson

## Suggested repository topic tags

tidbyt, pixlet, starlark, air-quality, openweather, aqi

## Pre-submission checks

```powershell
pixlet check freshair_live.star
pixlet serve freshair_live.star
```

Confirm that no credentials appear in the source, screenshots, commits, or pull-request text.
