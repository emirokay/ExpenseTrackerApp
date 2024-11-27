
# ExpenseTrackerApp

An iOS application developed with Swift and SwiftUI to help users efficiently manage and monitor their expenses. The app allows users to add, categorize, filter, and track their expenses while providing a clean and intuitive interface for seamless use.

## Features
- **Add Expenses**: Record expenses with details such as name, description, category, and amount.
- **Categorize Expenses**: Assign expenses to predefined categories such as Personal, Housing, Transportation, Food & Groceries, and more.
- **Filter by Category**: View and calculate total expenses for a specific category or for all categories combined.
- **Expense List Management**:
  - Displays a list of all recorded expenses with details.
  - Supports deletion of expenses through swipe actions.
- **Real-Time Totals**:
  - Shows the total amount spent for a selected category or all expenses.
- **Persistent Storage**: All expenses are saved locally using `UserDefaults` to ensure data is retained between sessions.
- **Dark Mode Support**: Automatically adapts to the user's system settings for a seamless experience in both light and dark themes.

## Technologies Used
- **Language**: Swift
- **Framework**: SwiftUI
- **Data Storage**: `UserDefaults`
- **Architecture**: MVVM (Model-View-ViewModel)

## Project Structure
- **Models**:
  - `ExpenseItem`: Represents individual expense entries with properties such as name, description, type, and amount.
- **ViewModels**:
  - `Expenses`: Manages the list of expenses, handles data persistence, and calculates totals by category.
- **Views**:
  - `ContentView`: The main view that displays the list of expenses and the total amount spent.
  - `AddExpenseView`: A form for adding new expense entries.

## How It Works
1. **Adding Expenses**:
   - Use the "Add Expense" button to open a form.
   - Enter the expense details, including name, description, category, and amount.
   - Save the expense to add it to the list.

2. **Filtering Expenses**:
   - Use the category picker in the "Total amount spent" section to filter expenses by type or view all expenses.

3. **Managing Expenses**:
   - Swipe left on an expense in the list to delete it.

4. **Persistent Storage**:
   - Expenses are stored locally using `UserDefaults`, ensuring data persists even after closing the app.

## Getting Started

### Prerequisites
- **Xcode**: Version 12.0 or higher
- **iOS**: Deployment target of iOS 14.0 or higher
- **macOS**: Version 10.15 or higher

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/emirokay/ExpenseTrackerApp.git
2. Navigate to the Project Directory:
	```bash
	cd ExpenseTrackerApp
3. Open in Xcode:
	```bash
	open ExpenseTrackerApp.xcodeproj
4. Build and Run:
- Select a simulator or connect a physical device.
- Click the 'Run' button in Xcode to build and launch the app.

## Requirements
- Xcode: Version 12.0 or higher
- iOS: Deployment target of iOS 14.0 or higher

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your proposed changes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Screenshots
<img width="544" alt="Screenshot 2024-11-27 at 21 48 14" src="https://github.com/user-attachments/assets/94796205-a24c-4baa-b62e-bea4db8a005b">
<img width="544" alt="Screenshot 2024-11-27 at 21 48 28" src="https://github.com/user-attachments/assets/498f5f6c-8ade-4023-80f7-47cf9224f385">
<img width="544" alt="Screenshot 2024-11-27 at 21 48 48" src="https://github.com/user-attachments/assets/06b31e8b-0f57-41e7-ad4d-b9f8f483d98f">
<img width="544" alt="Screenshot 2024-11-27 at 21 49 11" src="https://github.com/user-attachments/assets/a2c27b9a-271c-418f-9d6a-fd84b465434f">
<img width="544" alt="Screenshot 2024-11-27 at 21 49 23" src="https://github.com/user-attachments/assets/b12e2e93-3eec-42dd-af73-881f809fb268">






