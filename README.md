# Swift 5.8 (5.8.0.124.2) compiler crash 🐛

This repo contains a package with a bit of code that reproduces a compiler crash when compiling with Swift 5.8 (5.8.0.124.2). The same sources compile with errors (these are expected) with Swift 5.7 (5.7.2.135.5).

To reproduce the issue:
 1. Clone this repository
 1. Open the package with Xcode 14.3 RC 2
 1. Uncomment the code in `LegacyNode+Versionable.swift`
 1. Try to build
