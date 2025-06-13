FROM python:3.10-slim-bookworm

WORKDIR /app

COPY .converted_scripts/marathon_times.py ./marathon_times.py

# Install system dependencies required by Playwright browsers (e.g., Chromium)
# These are common dependencies for headless browser environments on Debian/Ubuntu
RUN apt-get update && apt-get install -y \
    ca-certificates \
    fonts-liberation \
    libnss3 \
    libnspr4 \
    libdbus-1-3 \
    libatk1.0-0 \
    libatk-bridge2.0-0 \
    libcups2 \
    libdrm2 \
    libgbm1 \
    libglib2.0-0 \
    libgconf-2-4 \
    libgtk-3-0 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libxss1 \
    libxtst6 \
    libappindicator1 \
    libasound2 \
    libpangocairo-1.0-0 \
    libx11-xcb1 \
    libxcb1 \
    libxkbcommon0 \
    xdg-utils \
    --no-install-recommends && \
    rm -rf /var/lib/apt/lists/*

# Install Python dependencies
RUN pip install --no-cache-dir \
    beautifulsoup4 \
    nest_asyncio \
    langchain \
    langchain-experimental \
    langchain-openai \
    langchain-google-genai \
    playwright \
    faiss-cpu \
    duckduckgo_search \
    pandas \
    pydantic \
    langchain-text-splitters

# Install Playwright browser binaries
# This command must be run after the 'playwright' Python package is installed
RUN playwright install chromium

# Create the data directory as it's used by the application for file operations
RUN mkdir -p data

CMD ["python", "./marathon_times.py"]