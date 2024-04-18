# Quick setup commands

**Recursively initialize all sub-modules (after cloning)**

```
git submodule update --init --recursive
```

**Build the project**

> Installation of gradle is not necessary as ./gradlew will download and use the gradle distributable defined in `gradle/gradle-wrapper.properties`

> Do update the project version in `build.gradle` before running the build

```
./gradlew build
```

The build process will output the jar files to the `/build` directory.
