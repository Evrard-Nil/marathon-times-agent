FROM python:3.10-slim-bookworm

# Install system dependencies for Playwright
RUN apt-get update && apt-get install -y \
    libglib2.0-0 \
    libnss3 \
    libfontconfig1 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libgbm1 \
    libasound2 \
    libatspi2.0-0 \
    libgdk-pixbuf2.0-0 \
    libgtk-3-0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libxkbcommon0 \
    libxshmfence1 \
    libxss1 \
    libxtst6 \
    xdg-utils \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the application code
COPY .converted_scripts/marathon_times.py .converted_scripts/

# Install Python dependencies
RUN pip install beautifulsoup4 nest_asyncio "langchain>=0.1.0" langchain-experimental langchain-openai langchain-google-genai pandas playwright faiss-cpu duckduckgo_search langchain-text-splitters

# Install Playwright browsers and their dependencies
RUN playwright install chromium && \
    playwright install-deps chromium

# Create the data directory used by the application
RUN mkdir -p data

# Set the entry point for the application
CMD ["python", ".converted_scripts/marathon_times.py"]