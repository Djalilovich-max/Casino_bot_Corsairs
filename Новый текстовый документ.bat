@echo off
echo Создание папки для бота...
mkdir C:\Users\ASUS\Casino_bot_Corsairs\telegram_bot

cd C:\Users\ASUS\Casino_bot_Corsairs\telegram_bot

echo Создание виртуального окружения...
python -m venv venv

echo Активирование виртуального окружения...
call venv\Scripts\activate

echo Установка зависимостей...
pip install python-telegram-bot

echo Создание файла с кодом бота...
echo from telegram import Update > bot.py
echo from telegram.ext import Updater, CommandHandler, CallbackContext >> bot.py
echo TOKEN = 'YOUR_BOT_TOKEN' >> bot.py
echo def start(update: Update, context: CallbackContext) -> None: >> bot.py
echo     update.message.reply_text('Привет! Я ваш Telegram-бот.') >> bot.py
echo def main() -> None: >> bot.py
echo     updater = Updater(TOKEN) >> bot.py
echo     dispatcher = updater.dispatcher >> bot.py
echo     dispatcher.add_handler(CommandHandler("start", start)) >> bot.py
echo     updater.start_polling() >> bot.py
echo     updater.idle() >> bot.py
echo if __name__ == '__main__': >> bot.py
echo     main() >> bot.py

echo Создание requirements.txt...
echo python-telegram-bot >> requirements.txt

echo Процесс завершен! Перейдите в папку C:\Users\ASUS\Casino_bot_Corsairs\telegram_bot и запустите бота командой python bot.py

pause
