# JARVIS Execution Guide

## 🎯 Different Ways to Run JARVIS

### 1️⃣ Text Mode (Recommended for First Time)

**Best for**: Testing, debugging, systems without microphone

```bash
cd jarvis_ai
python main.py --text
```

**Example:**
```
========================================
🤖 JARVIS v1.0 - TEXT MODE
========================================

📝 You: Hello

🤖 JARVIS: Good afternoon, Sir. How may I assist you?

📝 You: What time is it?

🤖 JARVIS: It is currently 02:45 PM.

📝 You: Goodbye

🤖 JARVIS: Farewell, sir.
```

### 2️⃣ Voice Mode (Interactive)

**Best for**: Hands-free operation, natural interaction

```bash
cd jarvis_ai
python main.py
```

**How to use:**
1. Program starts and listens for your voice
2. Speak clearly into the microphone
3. JARVIS recognizes and responds with voice
4. Press Ctrl+C to exit

**Example:**
```
🎤 Say your command (or press Enter for text input):
🎤 Listening...
✓ Heard: "what is the weather"
🔄 Processing audio...
🤖 JARVIS: Let me check that for you.
🤖 JARVIS: Temperature: 23°C, Humidity: 65%
```

### 3️⃣ GUI Mode (Visual)

**Best for**: User-friendly interface, non-technical users

```bash
cd jarvis_ai
python gui.py
```

**Features:**
- Beautiful dark theme interface
- Type commands in text field
- See conversation history
- Help button with all commands
- Clear and Exit buttons

### 4️⃣ Demo Mode (Testing)

**Best for**: Verifying installation without dependencies

```bash
cd jarvis_ai
python demo.py
```

Shows various commands and how JARVIS would respond.

---

## 🚀 Startup Options

### Using Batch File (Windows)
```batch
run_jarvis.bat
```
Choose option 1, 2, or 3 when prompted.

### Using Shell Script (macOS/Linux)
```bash
chmod +x run_jarvis.sh
./run_jarvis.sh
```
Choose option 1, 2, or 3 when prompted.

---

## 📊 Command Examples by Mode

### Text Mode
```
Input: "Hello"
Input: "What time is it?"
Input: "Open calculator"
Input: "Tell me about quantum physics"
Input: "Calculate 50 * 25"
Input: "Help"
Input: "Exit"
```

### Voice Mode
```
"Hey JARVIS"
"What's the weather?"
"Open Chrome"
"Search for machine learning"
"Check my CPU usage"
"Tell me a joke"
"Goodbye"
```

### GUI Mode
- Type in text field
- Press Enter or click Send
- View responses in conversation area
- Click Help for command list

---

## 🔧 Advanced Startup Options

### Debug Mode (Verbose Output)
```bash
python main.py --text --debug
```

### Specify Microphone
```bash
python main.py --microphone 2
```

### Use Specific Voice
Edit `config.py`:
```python
# Change voice index (0 = male, 1 = female, etc.)
self.engine.setProperty('voice', voices[1].id)
```

### Custom Wake Word (Future)
Edit `config.py`:
```python
WAKE_WORD = "jarvis"  # Or your custom word
```

---

## 📈 Performance Tips

### For Voice Mode
1. **Better recognition:**
   - Speak clearly and slowly
   - Reduce background noise
   - Position mic 10-15cm away
   - Increase `PHRASE_TIME_LIMIT` in config.py

2. **Faster response:**
   - Reduce `VOICE_SPEED` in config.py
   - Use simpler commands
   - Keep `RESPONSE_DELAY` low

### For GUI Mode
1. **Smoother interface:**
   - Keep conversation window small
   - Clear old messages if slow
   - Run on modern computer (2GHz+)

### For System Resources
1. **Lower memory usage:**
   - Use text mode instead of GUI
   - Disable voice output
   - Limit concurrent operations

---

## 🎓 Learning Path

**First Time Users:**
1. Run demo: `python demo.py`
2. Try text mode: `python main.py --text`
3. Customize config.py
4. Try GUI: `python gui.py`
5. Try voice (if microphone available): `python main.py`

**Advanced Users:**
1. Explore modules in `modules/` folder
2. Modify personality in `personality.py`
3. Add new commands in `command_interpreter.py`
4. Extend information services
5. Integrate advanced features

---

## 🐛 Debugging

### Enable Debug Output
```python
# In main.py, add:
import logging
logging.basicConfig(level=logging.DEBUG)
```

### Test Individual Modules
```bash
# Test voice engine
python -c "from modules.voice_engine import VoiceEngine; v = VoiceEngine(); print('OK')"

# Test commands
python -c "from modules.command_interpreter import CommandInterpreter; c = CommandInterpreter(); print(c.parse_command('hello'))"

# Test info retrieval
python -c "from modules.information_retriever import InformationRetriever; i = InformationRetriever(); print(i.get_time())"
```

### Check Microphone
```bash
python -m speech_recognition
```

---

## 📱 Integration with Other Tools

### Use JARVIS Output in Scripts
```python
from jarvis_ai.main import JARVIS

jarvis = JARVIS(use_voice=False)
jarvis.process_command("what time is it")
```

### Call JARVIS from Command Line
```bash
python -c "from jarvis_ai.main import JARVIS; j = JARVIS(use_voice=False); j.process_command('hello')"
```

### Create Custom Commands
Edit `main.py` and add to `process_command()`:
```python
elif command_type == "my_command":
    result = self.my_custom_function()
    self.respond(result)
```

---

## ⏱️ Typical Startup Times

- **Text Mode**: < 1 second
- **GUI Mode**: 2-3 seconds
- **Voice Mode**: 3-5 seconds (with mic initialization)
- **First Run**: +2 seconds (module loading)

---

## 🎉 Quick Reference Card

| Mode | Command | Best For |
|------|---------|----------|
| Text | `python main.py --text` | Testing, debugging |
| GUI | `python gui.py` | User-friendly |
| Voice | `python main.py` | Hands-free |
| Demo | `python demo.py` | Verification |
| Batch (Win) | `run_jarvis.bat` | Easy startup |
| Shell (Unix) | `./run_jarvis.sh` | Easy startup |

---

For more detailed information, see [README.md](README.md) and [QUICKSTART.md](QUICKSTART.md)
