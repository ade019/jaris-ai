# JARVIS Quick Start Guide

## ⚡ Get Started in 2 Minutes

### Option 1: Windows - Double Click (Easiest)
1. Open the project folder
2. Double-click `run_jarvis.bat`
3. Choose your mode (1, 2, or 3)
4. Start talking to JARVIS!

### Option 2: Manual Installation

#### Step 1: Install Dependencies
```powershell
python -m pip install -r requirements.txt
```

#### Step 2: Choose Your Mode

**Text Mode (No Voice - Recommended for First Time)**
```powershell
cd jarvis_ai
python main.py --text
```

**GUI Mode (Beautiful Interface)**
```powershell
cd jarvis_ai
python gui.py
```

**Voice Mode (Requires Microphone)**
```powershell
cd jarvis_ai
python main.py
```

## 🎤 Voice Mode Tips

If voice mode doesn't work:
1. Check your microphone is connected
2. Test microphone in Windows Settings
3. Try text mode first: `python main.py --text`

## 📝 Example Commands to Try

Try these in JARVIS:

```
Hello
What time is it?
What's today's date?
Tell me the weather
Who is Albert Einstein?
Open notepad
Calculate 50 plus 25
Search for Python programming
Check CPU usage
Tell me a joke
Help
```

## 🔧 Troubleshooting

| Problem | Solution |
|---------|----------|
| "Module not found" | Run: `python -m pip install -r requirements.txt` |
| Microphone not working | Use text mode: `python main.py --text` |
| Port error | Close other JARVIS instances |
| GUI not appearing | Make sure tkinter is installed: `python -m tkinter` |

## 📁 Project Files

```
jarvis_ai/
├── main.py          👈 Main program
├── gui.py           👈 GUI interface
├── config.py        👈 Settings
├── test_jarvis.py   👈 Test suite
└── modules/         👈 Core modules
    ├── voice_engine.py
    ├── command_interpreter.py
    ├── information_retriever.py
    ├── system_control.py
    └── personality.py
```

## 🚀 Advanced Features

### Customize Voice
Edit `jarvis_ai/config.py`:
```python
VOICE_SPEED = 150  # Words per minute
VOICE_VOLUME = 0.9  # 0.0 to 1.0
```

### Change Allowed Apps
Edit `jarvis_ai/config.py`:
```python
ALLOWED_APPLICATIONS = [
    "notepad", "calculator", "chrome", ...
]
```

### System Thresholds
```python
CPU_WARNING_THRESHOLD = 80  # Percent
MEMORY_WARNING_THRESHOLD = 85
BATTERY_WARNING_THRESHOLD = 20
```

## 💡 Tips

- **Speak clearly** in voice mode for better recognition
- **Use simple commands** for best results
- **Say "help"** to see all capabilities
- **Check config.py** to customize JARVIS for your needs
- **Memory is saved** to `jarvis_memory.json`

## 📞 Need Help?

1. Check README.md for full documentation
2. Run in text mode to debug
3. Look at example commands above
4. Check your microphone settings

---

**Ready?** Run `python main.py --text` and start chatting with JARVIS! 🤖
