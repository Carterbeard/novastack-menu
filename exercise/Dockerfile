# ORD-371: package the tea-time special. Replace each ??? (three TODOs).

# TODO 1: start from the slim Python 3.12 image
FROM python:3.12-slim

# Make /app the working folder inside the container.
WORKDIR /app
# Copy only the dependency list first, so Docker can cache the install step.
COPY requirements.txt .

# TODO 2: install the requirements, without keeping pip's download cache
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the project in.
COPY . .

# TODO 3: start the app with: flask --app app run   (on port 8001)
CMD ["flask","--app", "app", "run", "--host=0.0.0.0", "--port=8001"]
