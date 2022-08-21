## Telegram window mover

Simple problem with simple solution. This small utility created for standardize the location of the window of [Telegram for desktop (Windows)](https://desktop.telegram.org).

Written in [autoit](https://www.autoitscript.com/site/).

## Settings

You can create `setting.ini` and put it near by compiled `.exe` for set some options:

```ini
[WindowSize]
width=1024
heigth=768

[CenterPoint]
x=0
y=0
```

By default window mover will move window to center of screen with `width = 1024` and `heigth = 768`

## Compilation

1. Download `AutoIt Full Installation` from [here](https://www.autoitscript.com/site/autoit/downloads/)
2. Run `Compile Script to .exe (x64)` and choose `source.au3`
3. Set name and icon
4. Compile

## License

MIT