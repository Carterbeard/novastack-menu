# Lecture 5 · Advanced Lab: your answers

Fill in each line after the colon. Run the check with
`uv run tools/check_lab5.py advanced`.

D1: db
D2: 25
D3: 201
D4: 200
D5: postgres (PostgreSQL) 16.15 (Debian 16.15-1.pgdg13+2)

## Why does the app use that hostname, and why does `down -v` lose the data? (your words)

W1: The app uses the hostname db because this is the name of the service and to access the specific service we must reference what we mentioned in compose.yaml
W2: Down -v deletes all the data stored on the desk and resets it back to the schema whereas down without the -v keeps the data but restores everything else
