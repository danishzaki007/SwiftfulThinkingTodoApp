# 📝 SwiftData Todo App

A modern, feature-rich Todo List application built with **Swift**, **SwiftUI**, and **SwiftData**, following the **MVVM (Model-View-ViewModel)** architectural pattern. 

Inspired by clean coding practices and modern iOS development patterns (similar to the teachings of Swiftful Thinking), this project demonstrates how to effectively combine SwiftData's persistence framework with reactive state management in SwiftUI.

---

## ✨ Features

- **Persistent Storage:** Built using **SwiftData** for seamless, high-performance local data persistence across app launches.
- **MVVM Architecture:** Clean separation of concerns with dedicated ViewModels handling business logic, filtering, and sorting state.
- **Full CRUD Operations:** Create, Read, Update, and Delete tasks effortlessly.
- **Task Categorization & Prioritization:** Organize tasks with custom priorities (Low, Medium, High) and categories/tags.
- **Search & Filter:** Real-time search bar and filter toggles (Completed vs. Pending) powered by SwiftData predicates and dynamic view models.
- **Modern SwiftUI UI:** Clean, accessible interface utilizing native iOS components, SF Symbols, and smooth list animations.

---

## 🛠 Tech Stack & Architecture

- **Language:** Swift 5.9 / 6.0
- **Framework:** SwiftUI
- **Persistence:** SwiftData (`@Model`, `@Query`, `ModelContext`)
- **Architecture:** MVVM (`@Observable` ViewModels or `ObservableObject`)
- **Platform:** iOS 17.0+
