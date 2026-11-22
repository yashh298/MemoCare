MEMOCARE — full project (frontend + backend + local database)

HOW TO RUN (Windows)
  1. Install Node.js 20 or newer (https://nodejs.org) if you don't have it.
  2. Double-click  START-MEMOCARE.bat
     - First run installs packages (internet needed, a few minutes) and creates the database.
     - The browser opens http://localhost:4000 by itself. Keep the black window open while using the app.
  3. Close the black window (or press Ctrl+C) to stop.

  Mac / Linux:   cd memocare-backend  ->  npm install  ->  npm run start:local

WHERE IS THE DATABASE?
  memocare-backend/data/pgdata   (created on first run)
  Logins, patients, test results — everything is stored there, on your computer.
  It is a real PostgreSQL database running inside the project (no internet, no Docker).
  To back it up: copy the "data" folder.  To reset everything: close the app and delete "data".

LOGINS (demo accounts, password for all:  Password123!)
  doctor@memocare.dev     family@memocare.dev
  caretaker@memocare.dev  admin@memocare.dev
  Hospital admin code (login tab "Hospital admin code"):  CKT
  New users can also sign up normally; they are saved in the database folder above.

FOLDERS
  memocare-backend   Express + Prisma API (also serves the website)
  memocare-frontend  React source. The ready-built site is in memocare-frontend/dist.
                     To change the UI:  cd memocare-frontend -> npm install -> npm run build
  Theme: teal/cream with a light/dark toggle (memocare-frontend/src/styles/tokens.css).

NOTES
  - memocare-backend/.env holds your secrets. Don't share it publicly.
  - If port 4000 or 54329 is busy, change PORT in .env or set LOCAL_DB_PORT.
  - Redis is optional (reminders / queued jobs only).
