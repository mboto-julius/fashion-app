# Fashion App

A Flutter-based fashion application built with **Flutter** (frontend) and **Django Rest Framework** (backend), developed for learning purposes — exploring how to connect a mobile UI with a REST API.

## Tech Stack

- **Frontend:** Flutter
- **Backend:** Django Rest Framework (DRF)

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Python 3.x & pip
- Django + Django REST Framework (`pip install djangorestframework`)

### Run the Flutter App

```bash
flutter pub get
flutter run
```

### Run the Django Backend

```bash
cd backend
pip install -r requirements.txt
python manage.py migrate
python manage.py runserver
```

## Learning Goals

This project was built to practice:

- Connecting a Flutter frontend to a Django REST API
- Structuring a full-stack mobile project
- Working with REST endpoints and JSON data in Flutter

## Flutter Resources

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)
- [Flutter Documentation](https://docs.flutter.dev/)