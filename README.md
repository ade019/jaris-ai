# JARVIS - Iron Man Style AI Assistant

![JARVIS Banner](https://img.shields.io/badge/JARVIS-AI%20Assistant-0099ff?style=flat-square)
![Python](https://img.shields.io/badge/Python-3.8%2B-green?style=flat-square)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=flat-square)

Welcome to **JARVIS**, a sophisticated AI assistant inspired by Tony Stark's AI from Iron Man! 🤖

## 🚀 Features

### Core Capabilities
- **Voice Recognition & Synthesis** - Listen to your commands and respond with voice
- **Natural Language Processing** - Understand complex user commands
- **System Control** - Safe control of applications, files, and system functions
- **Information Retrieval** - Get weather, time, dates, and web information
- **Wikipedia Search** - Quick access to knowledge base
- **System Monitoring** - Check CPU, memory, battery status
- **Learning & Memory** - Remembers important information and preferences
- **Personality** - Responsive with character and charm

### Multiple Interfaces
1. **Interactive Voice Mode** - Speak commands, hear responses
2. **Text Mode** - Type commands (for systems without microphone)
3. **GUI Mode** - Beautiful graphical interface

## 📋 Requirements

- Python 3.8 or higher
- Microphone (optional, for voice mode)
- 100MB free disk space

## 🔧 Installation

### Windows
```bash
# Clone or download the project
cd JARIS

# Run the setup script
run_jarvis.bat
```

### macOS/Linux
```bash
# Clone or download the project
cd JARIS

# Make script executable
chmod +x run_jarvis.sh

# Run the setup script
./run_jarvis.sh
```

### Manual Installation
```bash
# Create virtual environment
python -m venv venv

# Activate virtual environment
# On Windows: venv\Scripts\activate
# On macOS/Linux: source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run JARVIS
cd jarvis_ai

# For text mode (no voice)
python main.py --text

# For GUI mode
python gui.py
```

## 🎤 Usage

### Interactive Voice Mode
```bash
cd jarvis_ai
python main.py
```
- Speak your commands clearly
- JARVIS will respond with voice and text
- Press Ctrl+C to exit

### Text Mode
```bash
python main.py --text
```
- Type your commands
- Press Enter to send
- Type 'exit' or 'quit' to exit

### GUI Mode
```bash
python gui.py
```
- Beautiful graphical interface
- Type commands in the text field
- Click Send or press Enter

## 💬 Example Commands

### Information
- "What time is it?"
- "What's today's date?"
- "Tell me the weather"
- "What is Python?"

### System Control
- "Open notepad"
- "Launch calculator"
- "Search for AI"
- "Check CPU usage"
- "Show battery status"

### Calculations
- "5 plus 3"
- "10 times 20"
- "100 divided by 5"

### Fun
- "Tell me a joke"
- "What can you do?"
- "Help"

### Control
- "Goodbye" / "Exit" / "Quit"

## 📁 Project Structure

```
JARIS/
├── jarvis_ai/
│   ├── main.py                 # Main JARVIS engine
│   ├── gui.py                  # GUI interface
│   ├── config.py               # Configuration settings
│   ├── modules/
│   │   ├── voice_engine.py     # Voice I/O
│   │   ├── command_interpreter.py  # NLP & command parsing
│   │   ├── information_retriever.py # Information services
│   │   ├── system_control.py   # Safe system control
│   │   └── personality.py      # Personality & responses
│   └── data/
│       └── jarvis_memory.json  # Learned information
├── requirements.txt            # Python dependencies
├── run_jarvis.bat             # Windows launcher
├── run_jarvis.sh              # macOS/Linux launcher
└── README.md                  # This file
```

## ⚙️ Configuration

Edit `jarvis_ai/config.py` to customize:
- Voice speed and volume
- Microphone timeout
- Allowed applications
- System thresholds (CPU, memory, battery)
- Personality settings

## 🔒 Security Features

JARVIS includes built-in safety measures:
- Whitelist of allowed applications
- File type restrictions
- Limited system command execution
- No admin privilege requirements
- Safe file operations

## 🎯 Current Capabilities

### Enabled
- ✅ Voice recognition and synthesis
- ✅ Command interpretation
- ✅ Weather information
- ✅ Time/Date queries
- ✅ Wikipedia search
- ✅ System monitoring
- ✅ Application launching
- ✅ Web search
- ✅ Basic calculations
- ✅ Personality responses
- ✅ Memory/learning system

### Planned Features
- 🔄 Smart home integration (IoT)
- 🔄 Email support
- 🔄 Calendar integration
- 🔄 Advanced context awareness
- 🔄 Machine learning improvements
- 🔄 Multi-language support
- 🔄 Web scraping for news

## 🐛 Troubleshooting

### "No module named speech_recognition"
```bash
pip install SpeechRecognition
pip install pyaudio
```

### Microphone not working
- Check that your microphone is connected
- Use text mode: `python main.py --text`
- Check microphone permissions

### Voice output not working
```bash
pip install pyttsx3
```

### Port already in use
- Close other JARVIS instances
- Restart your system

## 📚 Technical Stack

- **Speech Recognition**: Google Speech API via SpeechRecognition
- **Text-to-Speech**: pyttsx3
- **NLP**: Regular expressions and pattern matching
- **System Info**: psutil
- **Weather**: Open-Meteo API
- **Knowledge**: Wikipedia API
- **GUI**: Tkinter

## 🤝 Contributing

Feel free to fork, modify, and improve JARVIS!

## 📝 License

This project is open source and available for educational and personal use.

## ⚡ Tips for Best Experience

1. **Use a good microphone** for better voice recognition
2. **Speak clearly** when using voice mode
3. **Use specific commands** for better understanding
4. **Check config.py** to customize for your system
5. **Start with text mode** if having issues

## 🎬 Fun Facts

- JARVIS stands for "Just A Rather Very Intelligent System"
- Inspired by Tony Stark's AI from Iron Man movies
- Built with Python for flexibility and ease of modification
- Designed to be helpful, not harmful

## 📞 Support

Having issues? Try:
1. Check the troubleshooting section
2. Run in text mode first: `python main.py --text`
3. Check your Python version: `python --version`
4. Reinstall dependencies: `pip install -r requirements.txt --force-reinstall`

---

**Made with ❤️ by AI Enthusiasts**

*"Sometimes you gotta run before you can walk." - Tony Stark*

Good luck, and enjoy your JARVIS experience! 🚀
