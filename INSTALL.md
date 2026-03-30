# JARVIS Installation & Setup Guide

## 📋 System Requirements

- **OS**: Windows 10/11, macOS, or Linux
- **Python**: 3.8 or higher
- **RAM**: 2GB minimum (4GB recommended)
- **Disk Space**: 500MB
- **Microphone**: Optional (for voice mode)

## 🚀 Quick Install (Windows)

### Method 1: Automated (Easiest)
```batch
run_jarvis.bat
```
Follow the on-screen prompts to select your mode.

### Method 2: Manual Installation

#### Step 1: Install Python
1. Download from https://www.python.org/downloads/
2. During installation, **CHECK** "Add Python to PATH"
3. Verify: Open PowerShell and type `python --version`

#### Step 2: Install Dependencies
```powershell
python -m pip install -r requirements.txt
```

#### Step 3: Run JARVIS
```powershell
cd jarvis_ai

# Text mode (recommended first time)
python main.py --text

# GUI mode
python gui.py

# Voice mode (requires working microphone)
python main.py
```

## 🚀 Quick Install (macOS)

### Using Homebrew
```bash
# Install Python if not already installed
brew install python3

# Clone/download JARVIS
cd JARIS

# Install dependencies
python3 -m pip install -r requirements.txt

# Run JARVIS
cd jarvis_ai
python3 main.py --text
```

## 🚀 Quick Install (Linux)

### Ubuntu/Debian
```bash
# Install Python and dependencies
sudo apt-get install python3 python3-pip python3-tk

# Install JARVIS dependencies
cd JARIS
pip3 install -r requirements.txt

# Run JARVIS
cd jarvis_ai
python3 main.py --text
```

### Fedora/RHEL
```bash
# Install Python and dependencies
sudo dnf install python3 python3-pip python3-tkinter

# Install JARVIS dependencies
cd JARIS
pip3 install -r requirements.txt

# Run JARVIS
cd jarvis_ai
python3 main.py --text
```

## ⚙️ Configuration

### Editing config.py

Open `jarvis_ai/config.py` to customize:

```python
# Voice settings
VOICE_SPEED = 150          # Words per minute (100-300)
VOICE_VOLUME = 0.9         # Volume (0.0-1.0)
USE_VOICE_INPUT = True     # Enable voice recognition
USE_VOICE_OUTPUT = True    # Enable voice synthesis

# Microphone settings
MICROPHONE_TIMEOUT = 10    # Seconds to listen
PHRASE_TIME_LIMIT = 15     # Max phrase length (seconds)

# Allowed applications (SECURITY)
ALLOWED_APPLICATIONS = [
    "notepad", "calculator", "explorer", "chrome", ...
]

# System thresholds
CPU_WARNING_THRESHOLD = 80      # Percent
MEMORY_WARNING_THRESHOLD = 85   # Percent
BATTERY_WARNING_THRESHOLD = 20  # Percent
```

## 🎤 Microphone Setup

### Windows
1. Settings → Sound → Advanced
2. Check "Microphone" is enabled
3. Click "App volume and device preferences"
4. Ensure microphone is set as default

### macOS
1. System Preferences → Security & Privacy → Microphone
2. Enable Python for microphone access
3. Test in System Preferences → Sound → Input

### Linux
```bash
# Check microphone
alsamixer
# Use arrow keys to unmute
```

## 🧪 Testing Installation

### Quick Test
```bash
cd jarvis_ai
python demo.py
```

### Verify Modules
```bash
cd jarvis_ai
python test_jarvis.py
```

## 🐛 Troubleshooting

### "Python not found"
```powershell
# Windows - Add Python to PATH manually
$env:Path += ";C:\Users\YourUsername\AppData\Local\Programs\Python\Python311"

# Verify
python --version
```

### "ModuleNotFoundError"
```bash
# Reinstall dependencies
python -m pip install --upgrade -r requirements.txt
```

### Microphone not working
```bash
# Install audio dependencies (Ubuntu)
sudo apt-get install portaudio19-dev

# Reinstall PyAudio
python -m pip install --force-reinstall pyaudio
```

### Voice output issues
```bash
# Reinstall pyttsx3
python -m pip install --force-reinstall pyttsx3
```

### GUI doesn't appear
```bash
# Test tkinter
python -m tkinter

# If error, install (Linux)
sudo apt-get install python3-tk
```

## 📁 Project Structure

```
JARIS/
├── jarvis_ai/
│   ├── main.py                    # Main program
│   ├── gui.py                     # GUI interface
│   ├── demo.py                    # Demo/test
│   ├── test_jarvis.py            # Test suite
│   ├── config.py                 # Configuration
│   ├── jarvis_memory.json        # User memory (auto-generated)
│   ├── modules/
│   │   ├── __init__.py
│   │   ├── voice_engine.py       # Speech I/O
│   │   ├── command_interpreter.py # NLP
│   │   ├── information_retriever.py # Data services
│   │   ├── system_control.py     # System operations
│   │   ├── personality.py        # Responses
│   │   └── advanced_features.py  # Future features
│   └── data/
│       └── (user data storage)
├── requirements.txt              # Dependencies
├── run_jarvis.bat               # Windows launcher
├── run_jarvis.sh                # macOS/Linux launcher
├── README.md                    # Full documentation
├── QUICKSTART.md                # Quick start guide
└── INSTALL.md                   # This file
```

## 🔐 Security Notes

- JARVIS runs locally on your machine
- Only whitelisted applications can be launched
- Network calls are only to approved services (Weather, Wikipedia)
- All data is stored locally
- No personal data is sent to external servers (except weather)
- Memory is stored in `jarvis_memory.json` locally

## 🆘 Getting Help

### Common Issues

**1. Audio not working in WSL (Windows Subsystem for Linux)**
- Use native Windows Python installation instead
- Or run: `sudo apt install pulseaudio-module-bluetooth`

**2. Speech recognition timeout**
- Speak louder and closer to microphone
- Reduce background noise
- Increase timeout in config.py

**3. Text-to-speech missing voice**
```bash
# On Linux, may need additional voices
sudo apt install speech-dispatcher espeak
```

**4. PyAudio installation fails**
- Windows: May need Visual C++ redistributables
- macOS: May need Xcode command line tools: `xcode-select --install`
- Linux: Install portaudio: `sudo apt install portaudio19-dev`

## 📞 Support Resources

- **README.md** - Full feature documentation
- **QUICKSTART.md** - Quick usage guide
- **config.py** - Inline documentation
- **Python Docs** - https://docs.python.org/3/
- **Speech Recognition** - https://github.com/Uberi/speech_recognition
- **pyttsx3** - https://github.com/nateshmbhat/pyttsx3

## ✅ Verification Checklist

- [ ] Python installed (version 3.8+)
- [ ] requirements.txt installed
- [ ] Can run `python demo.py` without errors
- [ ] Microphone detected (if using voice mode)
- [ ] Internet connection available
- [ ] config.py customized if needed

## 🎉 You're Ready!

Once everything is set up:

1. **Start with text mode**: `python main.py --text`
2. **Try the demo**: `python demo.py`
3. **Move to GUI**: `python gui.py`
4. **Experiment with voice**: `python main.py`

**Enjoy JARVIS!** 🤖

---

For more information, see [README.md](README.md) and [QUICKSTART.md](QUICKSTART.md)
