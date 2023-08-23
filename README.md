# RickAndMorty
MVP using the Rick and Morty API

[![Swift](https://img.shields.io/badge/Swift-5.0-orange)](https://img.shields.io/badge/Swift-5.0-Orange)

## API ⚙️
https://rickandmortyapi.com/

## Architecture 🛠️
- The architecture used is Clean Architecture and MVVM.
- I used async/await for Concurrency.
- Views made with SnapKit, UIKit and Combine for data binding.
- [Fastlane](https://fastlane.tools/) Fastlane for the deployment of versions in TestFlight and ready to be used in a CI (CircleCI, Bitrise...). I would also use it for the management of Apple certificates and Provisionings.

## External dependencies 📦
| Library | Min Version | Notes |
|----------|----------------|---------------|
|Resolver|1.5.0|  Dependency injection |
|KingFisher|7.6.2| Image manager (download and cache) |
|SnapKit|5.6.0|  View generator with autolayout |

## UI Tests 🔨
Automated interface tests with Maestro https://maestro.mobile.dev/getting-started/installing-maestro
### Steps to run it
- Install Maestro on the computer (see official documentation)
- Go to directory `uiTesting`
- Run the following command:
```
maestro test scroll_tap_detail_test.yaml
```

## Future improvements 🚀
- I would add some SDKs for Production Bug or Crash handling in addition to Apple Crash reporting. For example: **Bugsnag** [Bugsnag](https://www.bugsnag.com/) or **Crashlytics** and **Analytics** from [Firebase](https://firebase.google.com/ )
- I would add [Tuist](https://tuist.io/) to reduce conflicts in project changes `.pbxproj` and improve build speed and automation in the CI.
