<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:2563EB,100:14B8A6&height=220&section=header&text=Expense%20Tracker%20%20%F0%9F%92%B0&fontSize=42&fontColor=ffffff&animation=fadeIn&fontAlignY=35&desc=Flutter%20%7C%20Provider%20%7C%20Shared%20Preferences&descAlignY=55&descSize=18" width="100%"/>

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=22&duration=2500&pause=500&color=2563EB&center=true&vCenter=true&width=700&lines=%F0%9F%92%B5+Track+Your+Daily+Expenses;%E2%9C%8F%EF%B8%8F+Add%2C+Edit+%26+Delete+Instantly;%F0%9F%93%8A+See+Totals+at+a+Glance;%F0%9F%92%BE+Data+Saved+Locally+on+Device" alt="Typing SVG" />

![Flutter](https://img.shields.io/badge/Flutter-3.x-02569B?style=for-the-badge&logo=flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-3.x-0175C2?style=for-the-badge&logo=dart&logoColor=white)
![Provider](https://img.shields.io/badge/State-Provider-purple?style=for-the-badge)
![SharedPrefs](https://img.shields.io/badge/Storage-SharedPreferences-14B8A6?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-14B8A6?style=for-the-badge)

</div>

---

## 🎯 Overview

**Personal Expense Tracker** is a Flutter application that helps users manage their daily expenses — add, edit, and delete transactions, see running totals, and keep everything saved locally on the device using **Shared Preferences**, with app-wide state managed through **Provider**.

---

## ✨ Features

<table>
<tr>
<td width="50%" valign="top">

### 🏠 Home Screen
- 📜 Scrollable list of all expenses
- 🏷️ Each entry shows Title, Category, Amount, Date
- 💵 Total Expenses summary
- 🔢 Total number of transactions

</td>
<td width="50%" valign="top">

### ➕ Add / Edit / Delete
- 📝 Form: Title, Amount, Category, Date
- ✅ Full validation before saving
- ✏️ Edit any existing expense
- 🗑️ Delete with instant UI update

</td>
</tr>
</table>

---

<div align="center">
<img src="https://capsule-render.vercel.app/api?type=rect&color=0:2563EB,100:14B8A6&height=3&width=100%"/>
</div>

## 🛠️ Tech Stack

<div align="center">
<img src="https://skillicons.dev/icons?i=flutter,dart,git,github" />
</div>

| Layer | Technology |
|---|---|
| Language | Dart |
| Framework | Flutter (Material) |
| State Management | `Provider` + `ChangeNotifier` + `Consumer` |
| Local Storage | `shared_preferences` |
| Data Model | JSON-serializable `Expense` model |

---

## 🚀 Getting Started

**1. Clone the repo**
```bash
git clone https://github.com/<your-username>/expense-tracker-flutter.git
cd expense-tracker-flutter
```

**2. Install dependencies**
```bash
flutter pub get
```

**3. Run the app**
```bash
flutter run
```

---

## 🏗️ Project Structure

```
expense_tracker/
├── lib/
│   ├── main.dart                     # 🎮 Entry point + MultiProvider setup
│   ├── models/
│   │   └── expense.dart              # Expense data model
│   ├── providers/
│   │   └── expense_provider.dart     # ChangeNotifier + CRUD logic
│   ├── screens/
│   │   ├── home_screen.dart          # List + totals
│   │   └── add_expense_screen.dart   # Add/Edit form
│   ├── widgets/
│   │   ├── expense_card.dart         # Reusable expense list item
│   │   └── summary_card.dart         # Total amount + count widget
│   ├── services/
│   │   └── storage_service.dart      # Shared Preferences read/write
│   └── utils/
│       └── validators.dart           # Form validation logic
├── pubspec.yaml
└── README.md
```

---

## 🧠 How It Works

| Concept | Implementation |
|---|---|
| **State Management** | `ExpenseProvider` extends `ChangeNotifier`; `Consumer`/`context.watch` rebuilds the UI on add/edit/delete |
| **Local Persistence** | Expenses are serialized to JSON and saved/loaded via `shared_preferences` on every change |
| **CRUD** | Add, edit, and delete all update the provider's list and immediately re-render the Home Screen |
| **Totals** | Total amount and transaction count are computed live from the provider's expense list |
| **Validation** | `Form` + `TextFormField` validators ensure Title, Amount, Category, and Date are all valid before save |

---

## 📈 Roadmap

- [ ] Category-wise spending charts
- [ ] Monthly/weekly filters
- [ ] Export data as CSV
- [ ] Migrate storage to SQLite/Hive for larger datasets
- [ ] Budget limits with alerts

---

<div align="center">

### ⭐ Star this repo if it helped you learn Provider & local storage in Flutter!

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:14B8A6,100:2563EB&height=120&section=footer"/>

</div>
