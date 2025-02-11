from telegram import Update
from telegram.ext import Application, CommandHandler, ContextTypes

TOKEN = '7902728225:AAG-THm-AqE8v95YxZksoN91PhUY3Phw7b4' # Используйте ваш токен
  # Замените на ваш реальный токен

async def start(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    await update.message.reply_text('Привет! Я ваш Telegram-бот.')

def main() -> None:
    # Создание приложения
    application = Application.builder().token(TOKEN).build()

    # Регистрируем команду /start
    application.add_handler(CommandHandler("start", start))

    # Запускаем бота
    application.run_polling()

if __name__ == '__main__':
    main()
