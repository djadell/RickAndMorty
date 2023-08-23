# RickAndMorty
MVP using the Rick and Morty API

[![Swift](https://img.shields.io/badge/Swift-5.0-orange)](https://img.shields.io/badge/Swift-5.0-Orange)

## API ⚙️
https://rickandmortyapi.com/

## Arquitectura 🛠️
- La arquitectura utilizada es Clean Arquitecture con MVVM, al ser un proyecto pequeño veo que no es necesaria una como VIPER.
- Concurrencia hecha con async/await.
- Vistas hechas con SnapKit, UIKit y Combine para el bindeo de datos.
- [Fastlane](https://fastlane.tools/) para el despliuegue de versiones en TestFlight y preparado para utilizarse en una CI (CircleCI). También lo lo utilizaría para la gestión de certificados y Provisionings.

## Librerías / Dependencias 📦
| Librería | Version min | Notas |
|----------|----------------|---------------|
|Resolver|1.5.0|  Injección de dependencias |
|KingFisher|7.6.2| Gestor de imágenes (descarga y cache) |
|SnapKit|5.6.0|  Generador de vistas con autolayout |

## UI Tests 🔨
Test de interfaz automatizados con Maestro https://maestro.mobile.dev/getting-started/installing-maestro
### Pasos para ejecutarlo
- Instalar Maestro en el ordenador
- ir al directorio de `uiTesting`
- Ejecutar el comando:
```
maestro test scroll_tap_detail_test.yaml
``

## Futuras mejoras 🚀
* Agregaría alguna SDKs para la gestión de Bugs en Producción de forma adicional a los informes de Crash de Apple. Por ejemplo: **Bugsnag** [Bugsnag](https://www.bugsnag.com/) o **Crashlytics** y **Analytics** de [Firebase](https://firebase.google.com/) para tener un mayor control de los crashes y informes de estabilidad en los despliegues, además de las analíticas de la App Store.
