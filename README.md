# Custom Massdrop Alt QMK firmware

This replaces the default Massdrop Alt firmware with some additional lighting effects and layer/key modifications.

## Key mods

| Key      | Action              |
| :------- | :------------------ |
| R Alt    | ~                   |
| Fn+UP    | Play/Pause          |
| Fn+Down  | Stop                |
| Fn+Left  | Prev Track          |
| Fn+Right | Next Track          |
| Fn+[     | Reduce Brightness   |
| Fn+]     | Increase Brightness |

## Lighting modes

| Key  | Action                                           |
| :--- | :----------------------------------------------- |
| Fn+Z | Toggles RGB visibility on all/keys/underglow/off |
| Fn+A | Previous lighting mode                           |
| Fn+D | Next lighting mode                               |
| Fn+Q | Effect speed decrease                            |
| Fn+E | Effect speed increase                            |
| Fn+W | Illumination increase                            |
| Fn+D | Illumination decrease                            |
| Fn+R | Hue increase                                     |
| Fn+F | Hue decrease                                     |
| Fn+R | Hue saturation increase                          |
| Fn+F | Hue saturation decrease                          |

# Installation

1. Follow the [QMK setup guide](https://docs.qmk.fm/#/newbs_getting_started) and setup at ~/qmk_firmware

## Linking the stuff

```shell
$ make
$ make link
```

# Usage

## Building your firmware

```shell
$ make compile
```

## Flashing your Alt

```shell
$ make flash
```

### DFU Mode

In order to get into DFU mode you must use a pin on the reset at the back, or Fn+B.

You can also do this all in one step, and just run `make aio`, which will run compile and flash. You will need to enter DFU during this time.
