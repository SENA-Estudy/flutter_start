# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## What this repo is

A learning project (course "Proyecto Integrador · Programación") building the Flutter front end of a restaurant POS app, "POS La Buena Mesa". Code, comments, UI strings and docs are in Spanish; keep new code in that style (Spanish identifiers such as `Producto`, `Mesero`, `Inicio`, `MesasScreen`).

`docs/Guia_Profundizacion_Dart_Introduccion_Flutter.pdf` is the course guide this code follows. It covers `@override`, exceptions (`try/catch/on/finally/throw`), common Dart built-ins, and an intro to Flutter with five POS screens (examples 4.1–4.5: home, mesas grid, pedido screen with `setState`, apertura de caja with a `TextEditingController` + `dispose()`, navigation via `Navigator.push`). Read it with `pdftotext docs/Guia_Profundizacion_Dart_Introduccion_Flutter.pdf -` when you need the exact example code or what the next step is meant to be.

## Current state

- Only `main.dart` exists, at the repo root. It is **not** a full Flutter project: there is no `pubspec.yaml`, `lib/`, `test/` or platform folders, so `flutter run`/`flutter test` will not work here as-is.
- The guide's workflow is to paste this code into `lib/main.dart` of a Flutter project (called `pos_restaurante` in the guide, created with `flutter create`) or run it on dartpad.dev. To make this repo runnable, run `flutter create .` (or move the file into `lib/main.dart` of a generated project).
- All screens currently live in a single file and use hard-coded data. The guide's planned next stage splits code into folders (models, screens such as `lib/screens/apertura_caja_screen.dart`, services), connects to the restaurant API, and reuses the `Caja`, `Pedido` and `MetodoPago` classes from earlier guides.

## App structure

`main()` → `runApp(PosApp)`; `PosApp` is a `MaterialApp` with Material 3 and `colorSchemeSeed: Colors.orange`; `home:` selects the screen. To try a different screen, swap `home: const Inicio()` for that screen's widget (e.g. `const MesasScreen()`).

## Commands

Flutter SDK is installed at `~/development/flutter` (`flutter` and `dart` are on PATH). Once a Flutter project exists:

- `flutter pub get`: install dependencies
- `flutter run`: run the app (hot reload with `r`)
- `flutter analyze`: lint and static analysis
- `dart format .`: format code
- `flutter test`: all tests; `flutter test test/some_test.dart` for one file; `flutter test --plain-name "name"` for a single test

Pure Dart examples (sections 1–3 of the guide) can run directly with `dart run file.dart`.
