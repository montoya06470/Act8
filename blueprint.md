# Caffenio App Blueprint

## Overview

A simple Flutter application to display a menu of drinks for a coffee shop named "Caffenio Montoya".

## Style, Design, and Features

### Version 1.0

*   **Theme:**
    *   Primary Color: Dark coffee brown (`#3E2723`).
    *   AppBar: Dark brown background with white text and icons for high contrast.
    *   Scaffold Background: Light grey (`#F5F5F5`).
*   **Layout:**
    *   A main screen `BebidasFilaColumna`.
    *   The screen is divided into "Bebidas Calientes" (Hot Drinks) and "Bebidas Frias" (Cold Drinks) sections.
    *   Each section displays a row of drinks with an icon and a label.
*   **Widgets:**
    *   A reusable `_BebidaIcon` widget is used to display each drink item consistently.

## Current Plan

*   **Task:** Change the AppBar title text color to white.
*   **Steps:**
    1.  Modify the `AppBarTheme` in `lib/main.dart`.
    2.  Add the `color` property to the `titleTextStyle` and set it to `textoSobreFondoOscuro` (which is `Colors.white`).
