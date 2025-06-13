FROM python:3.10-slim-bookworm

WORKDIR /app

# Create requirements.txt and install dependencies
RUN echo "bs4" >> requirements.txt && \
    echo "nest_asyncio" >> requirements.txt && \
    echo "langchain" >> requirements.txt && \
    echo "langchain-experimental" >> requirements.txt && \
    echo "langchain-openai" >> requirements.txt && \
    echo "langchain-google-genai" >> requirements.txt && \
    echo "playwright" >> requirements.txt && \
    echo "faiss-cpu" >> requirements.txt && \
    echo "duckduckgo_search" >> requirements.txt && \
    echo "pandas" >> requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Install Playwright browser
RUN playwright install chromium

# Copy the application code
COPY .converted_scripts /app/.converted_scripts

# Set the entry point
CMD ["python", ".converted_scripts/marathon_times.py"]