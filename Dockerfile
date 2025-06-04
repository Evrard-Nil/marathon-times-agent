FROM python:3.11-slim-bookworm

# Install system dependencies for Playwright and other tools
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    ca-certificates \
    fonts-liberation \
    libappindicator3-1 \
    libasound2 \
    libatk-bridge2.0-0 \
    libcurl4 \
    libdrm-dev \
    libgbm-dev \
    libgconf-2-4 \
    libgtk-3-0 \
    libnss3 \
    libxcomposite1 \
    libxdamage1 \
    libxfixes3 \
    libxrandr2 \
    libxrender1 \
    libxtst6 \
    xdg-utils \
    # Clean up APT cache to reduce image size
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# Copy the application source code
COPY .converted_scripts/marathon_times.py .converted_scripts/

# Create the data directory as it's used by the application
RUN mkdir -p data

# Install Python dependencies
RUN pip install --no-cache-dir \
    bs4 \
    nest_asyncio \
    langchain \
    langchain-experimental \
    langchain-openai \
    langchain-google-genai \
    pandas \
    playwright \
    langchain-community \
    langchain-text-splitters \
    faiss-cpu \
    duckduckgo_search

# Install Playwright browser binaries
RUN playwright install

# Set the command to run the application
CMD ["python", ".converted_scripts/marathon_times.py"]