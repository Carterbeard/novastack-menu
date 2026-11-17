# Lecture 5 · Intermediate Lab: your answers

Fill in each line after the colon. Times are in seconds and sizes in MB (a
plain number is fine). Run the check with
`uv run tools/check_lab5.py intermediate`.

## Part 2: Caching

T1: 3.636s
T2: 0.544s

## Part 3: A smaller box

S1: 1625.55MB
S2: 224MB 

## Part 5 (optional): Docker Scout

V1: skipped

## Why each change? (one or two sentences each; AI may draft, you must justify)

W1 (.dockerignore): To ignore any local files that may affect other people's PCs when being uploaded and downloaded. And may store private information so shouldn't be pushed
W2 (instruction order): So if any changes are made the pip install is still cached and can be reused for a shorter runtime, as we are copying the files after when we move copy.. after. 
W3 (slim base): slim requires a lot less storage
W4 (non-root user): can prevent malicious attacks from occuring as a user does not have access to all the root commands as an adminastrator
W5 (multi-platform): So an emulator is not required bevause this would increase CPU time and usage battery etc. 
