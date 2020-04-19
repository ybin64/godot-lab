# godot-lab
Godot iOS lab project, use with https://github.com/ybin64/godot

Prerequisites

- macOS, I have Mojave 10.14.16
- Xcode, I have 11.3.1
- Xcode command line utilities
- [Read Godot compiling instructions](https://docs.godotengine.org/en/stable/development/compiling/index.html)


**NOTE:** The Makefile assumes that you have the ybin64/godo folder in parallell 
with the ybin64/godo-lab folder.
```
your-dir
├── godot
├── godot-lab
```

## Projects

Build Godot
```
$ make build-godot-debug
```

Build and copy iOS export template

**NOTE:** Currently assumes that it's the 3.2.2.beta of Godot that is built

TBD: Extract version info from Godot source.

```
$ make build-export-template-debug-ios
$ make copy-export-template-debug-ios-to-godot 
```

TBD: Instructions on how to use the compiled iphone.zip template.

Start Godot
```
$ make start-godot
```

### Project image-tracking

1. Export project
2. Change "Signing & Capabilities" to your team.
3. Remove all images in Images.xcassets

LanuchImage


NOTE: Can't build in emulator due to ARKit dependency


