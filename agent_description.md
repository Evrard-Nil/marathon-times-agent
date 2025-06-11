### Agent Name
Marathon Data Agent (or Tom, as named in the code)

### Description
This agent is an autonomous research assistant designed to find and process specific information from the web, particularly historical sports data. It leverages an AutoGPT framework with LangChain primitives to perform complex tasks.

### Main Functions
*   **Web Research**: Searches the internet using DuckDuckGo to find relevant information.
*   **Web Scraping and Q&A**: Browses and extracts information from web pages, and can answer specific questions based on the content of a webpage.
*   **File Management**: Reads from and writes to files on disk.
*   **Data Processing**: Processes CSV files using a pandas-based environment, allowing for data manipulation and transformation into a desired format (e.g., tables).
*   **Information Extraction**: Extracts structured data, such as winning marathon times, names, countries, and years, from unstructured web content.

### Capabilities
The agent is capable of understanding natural language prompts, breaking down complex goals into sub-tasks, and executing a sequence of actions using its available tools to achieve the objective. It's particularly suited for tasks requiring data collection, analysis, and structuring from various online sources.

### Inputs
*   **Prompt (stdin/HTTP)**: A natural language query specifying the information to be found and the desired output format (e.g., "What were the winning boston marathon times for the past 5 years (ending in 2025)? Generate a table of the year, name, country of origin, and times.").

### Outputs
*   **Structured Data (stdout/file)**: The agent outputs the requested information, typically in a structured format like a table, which can be printed to the console or saved to a file.

### Environment Variables
*   **`GOOGLE_API_KEY`**: Required for authentication with Google Gemini, used for the agent's language model and embeddings.