# STOOL v1

STOOL — Simple HTML To Android APK Builder.

STOOL converts an HTML/CSS/JavaScript folder into an Android WebView APK project.

## Features

- Offline, Browser, and Hybrid modes
- JavaScript and DOM storage
- Local HTML/CSS/JS/assets preserved
- Optional Internet permission
- Debug APK output
- Termux-friendly CLI
- GitHub Actions build workflow

## Termux

```bash
git clone https://github.com/smob-ck/stool.git
cd stool
chmod +x install.sh
./install.sh
```

Then:

```bash
stool help
stool new MyApp ./my-html com.example.myapp hybrid
stool build ./stool-output/MyApp
```

If the phone does not have a usable Android SDK/Gradle toolchain, use the included GitHub Actions workflow. It builds on a Linux runner instead of pretending every Termux device can locally compile Android.

## Modes

- `offline`: local HTML only; no INTERNET permission.
- `browser`: Internet-enabled WebView.
- `hybrid`: local HTML plus Internet permission.

## License

BSL-1.0
