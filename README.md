# Core Dio Example

A Flutter project demonstrating clean architecture with Dio HTTP client, showcasing best practices for API integration, state management, and code organization.

## 🏗️ Architecture

This project follows Clean Architecture principles with a clear separation of concerns:

```
lib/
├── data/
│   ├── repositories/     # Repository implementations
│   └── services/         # API and other services
├── domain/
│   └── repositories/     # Repository interfaces
├── models/              # Data models with JSON serialization
└── presentation/
    ├── controllers/     # Business logic and state management
    └── pages/           # UI components
```

### Key Components

- **Domain Layer**: Contains business logic interfaces
  - `UserRepository`: Abstract definition of data operations

- **Data Layer**: Implements data operations
  - `ApiService`: Handles HTTP requests using Dio
  - `UserRepositoryImpl`: Concrete implementation of UserRepository

- **Presentation Layer**: Manages UI and state
  - `UserController`: Manages state using Provider
  - `UserPage`: Displays user interface

## 🛠️ Technologies & Tools

- **HTTP Client**: [Dio](https://pub.dev/packages/dio) ^5.4.1
- **State Management**: [Provider](https://pub.dev/packages/provider) ^6.1.1
- **JSON Serialization**: 
  - [json_annotation](https://pub.dev/packages/json_annotation) ^4.8.1
  - [json_serializable](https://pub.dev/packages/json_serializable) ^6.7.1
- **Code Generation**: [build_runner](https://pub.dev/packages/build_runner) ^2.4.8

## 🚀 Features

- Fetch and display user data from REST API
- Clean Architecture implementation
- Type-safe JSON serialization
- Proper error handling
- Loading state management
- Dependency injection
- Repository pattern
- Testable code structure

## 📦 Installation

1. Clone the repository:
```bash
git clone https://your-repository-url/core_dio.git
```

2. Install dependencies:
```bash
flutter pub get
```

3. Run code generation:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## 🔧 Usage

The project demonstrates how to:

1. Make HTTP requests using Dio
2. Implement clean architecture in Flutter
3. Use repository pattern for data access
4. Manage state with Provider
5. Generate JSON serialization code
6. Handle loading and error states

## 📱 Screenshots

[Add your screenshots here]

## 🧪 Testing

The architecture supports different testing strategies:

```dart
// Mock repository for testing
class MockUserRepository implements UserRepository {
  @override
  Future<UserResponse> getUsers() async {
    return UserResponse(
      // Mock data
    );
  }
}
```

## 🔄 State Management

Uses Provider with ChangeNotifier for state management:

```dart
// Access the controller
context.read<UserController>().fetchUsers();

// Listen to changes
Consumer<UserController>(
  builder: (context, controller, _) {
    if (controller.isLoading) {
      return CircularProgressIndicator();
    }
    // Build UI based on state
  },
)
```

## 🏛️ Architecture Benefits

1. **Separation of Concerns**: Each layer has a specific responsibility
2. **Testability**: Easy to test with mock implementations
3. **Maintainability**: Clear structure and dependencies
4. **Scalability**: Easy to add new features
5. **Flexibility**: Easy to change implementations

## 📝 API Reference

Using [ReqRes](https://reqres.in/) API for demonstration:
- Endpoint: `https://reqres.in/api/users`
- Method: GET
- Response: List of users with pagination

## 👥 Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details
