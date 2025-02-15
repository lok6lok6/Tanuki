# Tanuki
A shapeshifting chat app that hides in plain sight. End-to-end encryption, stealth mode, and self-destructing messages. 🦝🔒
Tanuki - The Ultimate Stealth Messaging App

🔹 Overview

Tanuki is a next-generation stealth messaging app designed for absolute privacy and security. With AI-driven fake conversations, peer-to-peer encrypted chat, self-destructing messages, and stealth disguise modes, Tanuki ensures that your messages remain undetectable and untraceable.

🚀 Features

🔒 Stealth & Security

Fake UI Mode – Disguises as a calculator, notes app, or other common apps.

Hidden Chat Unlock – Only accessible via secret gesture, pattern, or phrase.

Self-Destruct Messages – Auto-delete messages after a set time.

Ghost Mode – Automatically hides the app from recent apps and app drawer.

Remote Wipe via SMS – Erase all data remotely with a special command.

Fake AI Conversations – Generates realistic fake chats to cover real ones.

Peer-to-Peer Encrypted Messaging – No centralized server storage.

📱 App Flow

Open Tanuki → Fake UI (Calculator or Notes app appears).

Use Secret Unlock Gesture → Switch to real chat mode.

Send & Receive Encrypted Messages → Protected with WebRTC + Matrix.

Auto-Delete Chats → Self-destructing messages ensure no trace.

If Detected, Activate Disguise Mode → Instantly switches back to a fake app.

🛠 Tech Stack

Frontend: Swift (iOS) / Kotlin (Android)

Backend: WebRTC, Matrix Protocol (Decentralized Messaging)

Encryption: Libsodium, OpenPGP (End-to-End Encryption)

Storage: IPFS (For decentralized, encrypted message caching)

AI: OpenAI GPT (For Fake Chat Generations)

📂 Project Structure

Tanuki
│── Views
│   ├── CalculatorView.swift    # Fake UI - Calculator Mode
│   ├── NotesView.swift         # Fake UI - Notes Mode
│   ├── HiddenChatView.swift    # Unlocks Real Chat
│   ├── ChatView.swift          # Main Chat UI
│   ├── GhostModeView.swift     # Auto-locks when inactive
│
│── Models
│   ├── Message.swift           # Message Model - Encryption & Timer
│   ├── User.swift              # Stores User Info & Contacts
│
│── Controllers
│   ├── ChatManager.swift       # Handles Sending/Receiving Messages
│   ├── StealthManager.swift    # Manages Fake UI Switching
│   ├── SelfDestructManager.swift # Auto-Deletes Messages
│   ├── AuthenticationManager.swift # Face ID / Touch ID Unlock
│
│── Security
│   ├── EncryptionHelper.swift  # Encrypts & Decrypts Messages
│   ├── FakeMessageGenerator.swift # AI-Generated Cover-Up Chats
│   ├── GhostMode.swift         # Hides App from Recents
│
│── Networking
│   ├── MatrixClient.swift      # Matrix Decentralized Messaging
│   ├── WebRTCClient.swift      # Peer-to-Peer Calls & Chats
│
│── AppDelegate.swift           # Handles App Lifecycle & Stealth Features
│── ContentView.swift           # Main Entry Point

📦 Installation

git clone https://github.com/YOUR-USERNAME/Tanuki.git
cd Tanuki
open Tanuki.xcodeproj

👨‍💻 Development Workflow

Setting Up the Dev Branch

git checkout -b dev
git push origin dev

Working on Features

git checkout -b feature-stealth-mode
# Implement the feature
# Commit and push

Merging Features into Dev

git checkout dev
git merge feature-stealth-mode
git push origin dev

✅ Next Steps



📜 License

Tanuki is an open-source privacy tool for secure messaging. Use responsibly.

🚀 Join the Project: Feel free to contribute! Submit PRs, issues, and suggestions.

