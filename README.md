
# Flutter GetX || MVVM || Clean Architecture || Start App Template

### EN-US

Welcome to the Flutter GetX MVVM Clean Architecture Template! This template provides a robust starting point for building scalable and maintainable Flutter applications using GetX for state management and routing, get_it for dependency injection, and follows the MVVM (Model-View-ViewModel) architecture with Clean Architecture principles. It's designed to be OOP and SOLID compliant, ensuring your codebase remains organized and easy to manage as your project grows.

### Table of Contents

1. Project Overview
2. Folder Structure
3. Packages Used
4. Key Components Explained
 - Core
 - Data
 - Domain
 - Presentation
 - Routes
5. Dependency Injection
6. Routing with GetX
7. Notifications
8. Local Storage
9. Theming
10. Error Handling
11. Running the Project
12. Generating JSON Serialization Code
13. Additional Configurations
14. Conclusion

## Project Overview
This template is crafted to help developers, especially juniors, kickstart Flutter projects with a well-structured and maintainable architecture. It integrates essential packages and follows best practices to ensure that your application is scalable, testable, and easy to understand.

**Key Features:**

**MVVM Architecture:** Separates the UI from business logic, making the codebase cleaner and easier to manage.

**Clean Architecture:** Promotes a clear separation of concerns, enhancing code maintainability and scalability.

**Dependency Injection:** Utilizes get_it for managing dependencies, ensuring loose coupling between components.

**State Management & Routing:** Employs GetX for efficient state management and seamless routing.

**Local Storage:** Implements get_storage and flutter_secure_storage for data persistence.

**Notifications:** Integrates flutter_local_notifications for handling local notifications on both Android and iOS.

**Error Handling:** Centralizes error management for better debuggability and user experience.

**Theming:** Supports light and dark themes, allowing easy customization.


## Kullanım/Örnekler

```javascript
import Component from 'benim-projem'

function App() {
  return <Component />
}
```

  ## Folder Structure
A well-organized folder structure is crucial for maintaining a scalable and manageable codebase. Here's an overview of the project's structure:
```
lib/
├── core/
│   ├── error/
│   │   ├── exceptions.dart
│   │   └── failures.dart
│   ├── middleware/
│   │   └── auth_middleware.dart
│   ├── services/
│   │   ├── api_service.dart
│   │   ├── api_service_impl.dart
│   │   ├── connectivity_service.dart
│   │   ├── connectivity_service_impl.dart
│   │   ├── notification_service.dart
│   │   └── storage_service.dart
│   ├── utils/
│   │   ├── logger.dart
│   │   └── theme.dart
│   └── constants/
│       └── constants.dart
├── data/
│   ├── datasources/
│   │   ├── remote_data_source.dart
│   │   └── remote_data_source_impl.dart
│   ├── models/
│   │   └── user_model.dart
│   └── repositories/
│       └── user_repository_impl.dart
├── domain/
│   ├── entities/
│   │   └── user.dart
│   ├── repositories/
│   │   └── user_repository.dart
│   └── usecases/
│       └── get_users_usecase.dart
├── presentation/
│   ├── bindings/
│   │   ├── home_binding.dart
│   │   └── initial_binding.dart
│   ├── controllers/
│   │   └── user_controller.dart
│   ├── pages/
│   │   ├── home_page.dart
│   │   └── splash_page.dart
│   ├── widgets/
│   │   └── user_list_widget.dart
│   └── utils/
│       └── responsive.dart
├── routes/
│   ├── app_pages.dart
│   └── app_routes.dart
├── injection_container.dart
└── main.dart
```

## Folder Descriptions:

**core/:** Contains fundamental components like error handling, services, utilities, middleware, and constants that are used across the entire application.

**data/:** Handles data-related tasks, including data sources (e.g., API interactions), models (data representations), and repository implementations that fetch data from various sources.

**domain/:** Encapsulates the business logic, including entities (core data structures), repository interfaces, and use cases (application-specific business rules).

**presentation/:** Manages the UI layer, including bindings (dependency injection for views), controllers (state management), pages (UI screens), widgets (reusable UI components), and utility classes.

**routes/:** Manages application routing using GetX, defining pages and route names.

**injection_container.dart:** Sets up and registers all dependencies using get_it.

**main.dart:** The entry point of the application, initializing dependencies and running the app.


## Packages Used
The project leverages several Flutter packages to implement its features efficiently. Here's a breakdown of the primary packages used:

| Package       | Version       |Purpose|
| ------------- | ------------- || ------------- |
|get  | ^4.6.1	  || State management, dependency injection, and routing solution.  | 
| get_storage | ^2.0.3  || Lightweight key-value storage for simple data persistence.  | 
| dio  | ^4.0.0  || Powerful HTTP client for making API requests.  | 
| json_annotation  | ^4.0.1  || Annotations to generate JSON serialization code for models.   | 
| get_it  | ^7.2.0  || Service locator for dependency injection, managing app-wide dependencies.| 
| connectivity_plus | ^4.0.1 || 	Detects network connectivity status changes. | 
| flutter_local_notifications  | ^12.0.4 || Manages local notifications on both Android and iOS.| 
| logger  | 	^1.2.0  || Provides easy-to-use logging capabilities.  | 
| equatable  | ^2.0.5  || Simplifies value comparisons, particularly for state management.  | 
| intl  | ^0.18.1  || Internationalization and localization support.  | 
| flutter_secure_storage  | 	^8.0.0  || Secure storage for sensitive data like tokens and credentials.  | 
| build_runner  |^2.1.4  || Automates code generation tasks, such as JSON serialization.  | 
| json_serializable  | ^6.0.1  || Generates JSON serialization boilerplate code based on model annotations.  | 


## Key Components Explained

Understanding the role of each component is crucial for effectively utilizing this template. Below is an in-depth explanation of the primary components within each folder.

### Core

**Error Handling**

- **exceptions.dart:** Defines custom exception classes that represent different error scenarios, such as ServerException or CacheException.

- **failures.dart:** Defines failure classes that encapsulate error information, used to communicate errors between layers.

**Middleware**

- **auth_middleware.dart:** Implements middleware logic for routing, such as checking authentication status before allowing access to certain routes.

**Services**

- **api_service.dart & api_service_impl.dart:** Abstract class and its implementation for handling API interactions using Dio.

- **connectivity_service.dart & connectivity_service_impl.dart:** Abstract class and implementation for monitoring network connectivity.

- **notification_service.dart:** Manages local notifications for both Android and iOS platforms using flutter_local_notifications.

- **storage_service.dart:** Handles data persistence using get_storage and flutter_secure_storage for secure data storage.

**Utilities**

- **logger.dart:** Sets up a logger using the logger package for consistent and readable logging throughout the app.

- **theme.dart:** Defines light and dark theme configurations for the application, allowing easy theme management.

**Constants**

- **constants.dart:** Holds constant values used across the application, such as API endpoints, keys, and other static values.

### Data

**Datasources**

- **remote_data_source.dart & remote_data_source_impl.dart:** Abstract class and its implementation for fetching data from remote sources like APIs.

**Models**

- **user_model.dart:** Represents the data structure of a user as received from the API. Includes JSON serialization methods generated by json_serializable.

**Repositories**

- **user_repository_impl.dart:** Implements the UserRepository interface, managing data retrieval from the remote data source and handling any data transformation or error management.

### Domain

**Entities**

- **user.dart:** Defines the core User entity used within the application, representing the essential data structure without any dependencies on data sources or frameworks.

**Repositories**

- **user_repository.dart:** Abstract class that outlines the methods for data operations related to users, ensuring that the data layer's implementation is decoupled from the domain layer.

**Use Cases**

-**get_users_usecase.dart:** Encapsulates the business logic for fetching users. It interacts with the repository to retrieve data, following the Single Responsibility Principle.

### Presentation

**Bindings**

- **home_binding.dart:** Manages the dependency injection for the Home page, ensuring that the necessary controllers and services are available when the page is accessed.

- **initial_binding.dart:** Registers all global dependencies when the app starts, setting up services, repositories, use cases, and controllers.

**Controllers**

- **user_controller.dart:** Extends GetX's GetxController to manage the state related to users. Handles fetching users, managing loading states, and error states.

**Pages**

- **home_page.dart:** The main UI screen displaying the list of users. Utilizes the UserController to manage and display data.

- **splash_page.dart:** The initial screen displayed when the app launches. Typically used for initial loading or navigation to the home page after a delay.

**Widgets**

- **user_list_widget.dart:** Reusable widget for displaying a list of users. Enhances code reusability and separation of concerns within the UI.

**Utils**

- **responsive.dart:** Utility class for handling responsive design, ensuring the UI adapts to different screen sizes and orientations.
