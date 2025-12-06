# Journeys

A SwiftUI application for browsing and exploring travel journeys with detailed itineraries, descriptions, and beautiful imagery.

## Features

* Browse a curated list of travel journeys with rich details
* Search functionality to filter journeys by name
* Detailed journey view with full descriptions and day-by-day itineraries
* Light and dark mode toggle with persistent preference
* Smooth navigation between list and detail views
* Modular view components for clean architecture

## Architecture

The project demonstrates modern SwiftUI patterns and view composition:

### Model

* **Journey** - Decodable model representing journey data with itinerary information
  * Nested `Itinerary` struct for day-by-day activities
  * Conforms to `Identifiable` and `Hashable` for SwiftUI list support

### Service

* **JourneyService** - Loads and decodes journey data from JSON bundle resource
  * Uses `JSONDecoder` with snake_case key decoding strategy
  * Loads data from `journeys.json` in app bundle

### Views

#### Main Views:

* **ContentView** - Main container with searchable journey list and dark mode toggle
  * Uses `@AppStorage` for persistent dark mode preference
  * Real-time search filtering with `onChange` modifier
  * NavigationStack with type-safe routing

* **ItemView** - List item displaying journey preview with image, name, and duration
  * Compact horizontal layout for list display

* **JourneyView** - Detailed journey view with image, title, description, and itinerary
  * ScrollView with custom navigation bar
  * Composed of modular sub-views

#### Journey Detail Sub-Views (`JourneyViews/`):

* **ImageView** - Full-width journey image in detail view
* **TitleView** - Journey name and duration header
* **BodyView** - Container for journey description, itinerary, and about sections
  * Displays description, day-by-day itinerary with ForEach, and detailed about section

## State Management

* `@State` for local view state (search text, filtered journeys)
* `@AppStorage` for persistent dark mode preference
* `@Environment(\.dismiss)` for navigation dismissal
* Reactive filtering with `onChange` modifier

## Technologies

* **SwiftUI** - Modern declarative UI framework
* **NavigationStack** - Programmatic navigation with type-safe routing
* **JSON Decoding** - Custom `Decodable` implementation with `CodingKeys`
* **Searchable** - Built-in search functionality with real-time filtering
* **AppStorage** - Persistent user preferences for theme
* **Animation** - Smooth transitions with default SwiftUI animations

## Requirements

* iOS 17.0+
* Xcode 15.0+
* Swift 5.9+
