# Deploy FreshAir Live to your Tidbyt

## One-time display test

From the project folder:

```powershell
pixlet render freshair_live.star api_key="YOUR_OPENWEATHER_KEY" latitude="39.6133" longitude="-105.0166" title="Littleton AQI"
pixlet login
pixlet devices
pixlet push "YOUR_DEVICE_ID" freshair_live.webp
```

The normal `pixlet push` command displays the rendered WebP temporarily before the Tidbyt returns to its regular rotation.

## Persistent private app

Tidbyt's hosted Private Apps feature is available through Tidbyt Plus or Tidbyt for Teams.

In the Tidbyt mobile app:

```text
Settings → Developer → Deploy a Private App
```

Then, in this project folder:

```powershell
pixlet login
pixlet private create
```

Follow the prompts, then deploy the app using the private-app commands shown by Pixlet. The app will appear in the Tidbyt mobile app under **Your Private Apps**, where you can install it and enter the OpenWeather key and location settings.

## Public community app

To publish FreshAir Live for all Tidbyt users:

1. Fork the official `tidbyt/community` repository.
2. Generate or adapt the required community-app directory structure.
3. Run:

```powershell
pixlet check freshair_live.star
```

4. Submit a pull request to the community repository.

Do not include your OpenWeather key or Tidbyt API token.
