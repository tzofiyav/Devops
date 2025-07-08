# שלב 1: השתמש בדימוי בסיס רזה של פייתון
FROM python:3.9-slim

# שלב 2: הגדר את תיקיית העבודה בתוך הקונטיינר
WORKDIR /app

# שלב 3: העתק את כל קבצי הפרויקט (חוץ ממה שברשימת .dockerignore)
COPY . .

# שלב 4: התקן את כל הספריות הדרושות מה-requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# שלב 5: פתח את פורט 5000
EXPOSE 5000

# שלב 6: הרץ את קובץ app.py
CMD ["python", "app.py"]
