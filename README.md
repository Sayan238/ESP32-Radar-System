# 🚀 ESP32 Radar System

<p align="center">
  <img src="Images/radar_banner.gif" width="100%" alt="ESP32 Radar Banner"/>
</p>

<p align="center">
  <img src="https://img.shields.io/badge/ESP32-Radar_System-blue?style=for-the-badge&logo=espressif"/>
  <img src="https://img.shields.io/badge/Arduino-IDE-green?style=for-the-badge&logo=arduino"/>
  <img src="https://img.shields.io/badge/Processing-UI-orange?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Status-Working-success?style=for-the-badge"/>
</p>

---

# 📡 ESP32 Radar System

A futuristic radar system built using **ESP32**, **HC-SR04 Ultrasonic Sensor**, and **MG90S Servo Motor**.  
The servo continuously rotates the ultrasonic sensor, scans the surroundings, and sends real-time obstacle data to a professional radar UI made with **Processing IDE**.

---

# ✨ Features

✅ Real-time radar scanning  
✅ Ultrasonic obstacle detection  
✅ Smooth servo rotation  
✅ Professional radar visualization  
✅ Live angle + distance tracking  
✅ ESP32 serial communication  
✅ Cyberpunk-style radar interface  

---

# 🛠 Components Used

| Component | Quantity |
|---|---|
| ESP32 Dev Module | 1 |
| HC-SR04 Ultrasonic Sensor | 1 |
| MG90S / SG90 Servo Motor | 1 |
| Jumper Wires | Multiple |
| Breadboard | 1 |
| 5V Power Supply | 1 |

---

# 🔌 Circuit Diagram

<p align="center">
 <img width="1536" height="1024" alt="circuit_diagram" src="https://github.com/user-attachments/assets/633fc60e-de95-4278-b264-83c376417468" />

</p>

---

# 📡 Connections

## Servo Motor

| Servo Wire | ESP32 Connection |
|---|---|
| Yellow / Orange (Signal) | GPIO18 |
| Red (VCC) | 5V |
| Brown (GND) | GND |

---

## HC-SR04 Ultrasonic Sensor

| HC-SR04 Pin | ESP32 Connection |
|---|---|
| VCC | 5V |
| GND | GND |
| TRIG | GPIO5 |
| ECHO | GPIO17 |

---

# ⚠ Important Notes

- ESP32 is powered using USB.
- Servo motor uses external 5V supply.
- All GND connections must be common.
- Use voltage divider on ECHO pin because ESP32 uses 3.3V logic.

---

# 🧠 Working Principle

1. Servo rotates from 0° to 180°.
2. Ultrasonic sensor scans surroundings.
3. ESP32 calculates distance.
4. Data is sent to Processing IDE.
5. Radar UI visualizes detected objects in real time.

---

# 💻 Software Used

| Software | Purpose |
|---|---|
| Arduino IDE | Upload ESP32 Code |
| Processing IDE | Radar Visualization |

---

# 📂 Project Structure

```bash
ESP32-Radar-System
│
├── Arduino_Code
│   └── radar_system.ino
│
├── Processing_UI
│   └── radar_ui.pde
│
├── Images
│   ├── radar_ui.jpg
│   ├── circuit_diagram.png
│   └── radar_banner.gif
│
└── README.md
```

---

# 🚀 Getting Started

## 1️⃣ Upload ESP32 Code

- Open Arduino IDE
- Install ESP32 board package
- Install `ESP32Servo` library
- Upload `radar_system.ino`

---

## 2️⃣ Run Processing UI

- Open Processing IDE
- Open `radar_ui.pde`
- Change COM port:
  
```java
"COM3"
```

to your ESP32 COM port.

- Click ▶ Run

---

# 📷 Project Preview

<p align="center">
  <img src="Images/radar_ui.jpg" width="85%" alt="Radar UI"/>
</p>

---

# 🎥 YouTube Demo

<p align="center">
  <a href="YOUR_YOUTUBE_LINK">
    <img src="https://img.shields.io/badge/WATCH-DEMO_VIDEO-red?style=for-the-badge&logo=youtube"/>
  </a>
</p>

---

# 🔥 Future Improvements

- WiFi radar system
- OLED display support
- 3D radar visualization
- AI object classification
- Mobile app control

---

# 👨‍💻 Author

## Sayan Barman

<p align="left">
  <a href="https://github.com/Sayan238">
    <img src="https://img.shields.io/badge/GitHub-Sayan238-black?style=for-the-badge&logo=github"/>
  </a>
</p>

---

# ⭐ Support

If you like this project:

⭐ Star the repository  
🍴 Fork the project  
📢 Share with others  

---

# 🛰 Final Output

✔ Rotating Servo Radar  
✔ Live Obstacle Detection  
✔ Real-Time Radar Visualization  
✔ Professional UI Interface  

---
