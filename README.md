<h1>Meeney application</h1>

<p>UI design implementation for the meeney application.<br>The screenshot of the app current state is :<br></p>
<ul>
    <li><img src="screenshots/s1.png" width="100" ></li>
    <li><img src="screenshots/s2.png" width="100" ></li>
</ul>

<h3>How to setup this application</h3>
<p><b>Note</b>this application doesn't use any external libraries so you would not have to install an external library in flutter</p>

First create your flutter application with the app name meeney_app.
```
flutter create meeney_app
```

Add copy the 'assets' folder to the code directory
Replace the 'lib' folder with the 'lib' folder found in this directory

In the pubspec.yaml file include the images using the command
```
flutter:
  assets:
    - assets/images/
```

Initialize the fonts in the pubsepec.yaml file using the command:
```
flutter:
 fonts:
    - family: WorkSans
      fonts:
        - asset: assets/fonts/WorkSans-Regular.ttf
        - asset: assets/fonts/WorkSans-Light.ttf
          weight: 100
        - asset: assets/fonts/WorkSans-Medium.ttf
          weight: 500
        - asset: assets/fonts/WorkSans-Bold.ttf
          weight: 700
    - family: Roboto
      fonts:
        - asset: assets/fonts/Roboto-Regular.ttf
        - asset: assets/fonts/Roboto-Medium.ttf
          weight: 500
        - asset: assets/fonts/Roboto-Bold.ttf
          weight: 700
```

now your application is ready to run!!


If you want to change the package name of the application you should check out my repository using this <a href="https://github.com/AnthonyAniobi/Reusable_Flutter_Features">LINK</a>