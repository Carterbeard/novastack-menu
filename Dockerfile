# why: Step 5: the cached version. Slow, rarely-changing steps come first.
# why : Start from the official Python 3.12 image. "slim" is the small version.
FROM python:3.12-slim
# why: Make /app the working folder inside the container (created if it is missing).
WORKDIR /app
# why: Copy ONLY the dependency list first. Docker reuses (caches) this step
# why: until requirements.txt changes.
COPY requirements.txt .
# why: Install the requirements. --no-cache-dir stops pip keeping a download cache,
# why: which keeps the image smaller.
RUN pip install --no-cache-dir -r requirements.txt
# why: Create a dedicated unprivileged account for the app.
RUN useradd --create-home --uid 10001 appuser
# why: Now copy the rest of the project. Code changes often, so this comes last.
COPY . .

USER appuser
# why: When the container starts, run: python app.py
CMD ["python", "app.py"]
