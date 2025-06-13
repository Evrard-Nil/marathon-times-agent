### Agent Name
Tom

### Description
Tom is an autonomous AI agent designed to research and extract specific information from the web. Its primary function is to find and compile data, such as winning marathon times, and present this information in a structured, tabular format. It achieves this by leveraging web search, advanced web page scraping, and data processing capabilities.

### Main Functions
*   **Web Research:** Efficiently searches the internet and scrapes content from web pages to gather relevant information.
*   **Information Extraction:** Extracts specific details from web content based on user queries.
*   **Data Processing:** Processes structured data, such as CSV files, using natural language instructions to perform analysis or reformatting.
*   **File Management:** Reads from and writes to a local data directory to manage collected or processed information.

### Inputs
*   **User Prompt (Text):** A natural language query specifying the research task, for example, "What were the winning Boston Marathon times for the past 5 years (ending in 2025)? Generate a table of the year, name, country of origin, and times."

### Outputs
*   **Structured Data (Text/Files):** The agent provides the requested information, typically as a formatted text output (e.g., a table) to standard output. It can also save processed data or research findings to files within its local data directory.

### Environment Variables
*   **`GOOGLE_API_KEY`**: An API key required for authenticating with the Google Gemini API, which powers the agent's language model capabilities.