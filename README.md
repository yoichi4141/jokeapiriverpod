# 💩 fluttercook - Joke API × Riverpod 学習プロジェクト

このプロジェクトは、Flutterでのアプリ開発学習を目的に作成した  
**「ジョーク表示アプリ」**です。  
外部の Joke API を使って、ランダムなジョークを取得・表示し、  
**Riverpod** を用いた状態管理の実践練習も兼ねています。

---

## 🚀 機能

- Official Joke API からランダムなジョークを取得
- Riverpod を使った状態管理
- 「もっと💩」ボタンで再取得
- うんちワード（poop, toilet, fartなど）を含むジョークだけを抽出するフィルター機能（試験中）

---

## 🔧 使用技術

- Flutter 3.x
- Dart
- Dio（API通信）
- Riverpod（状態管理）
- Official Joke API（https://official-joke-api.appspot.com）

---

## 🎮 使い方（ローカル実行）

```bash
git clone https://github.com/yourname/fluttercook.git
cd fluttercook
flutter pub get
flutter run
