### AutoGPT Marathon Data Analyst

This agent leverages the AutoGPT framework to autonomously research and extract winning Boston Marathon times. It is designed to gather historical data from the web, process it, and present it in a structured tabular format, including the year, winner's name, country of origin, and time.

#### Main Functions
*   **Web Research:** Searches the web using DuckDuckGo and browses web pages with Playwright to find relevant marathon data.
*   **Data Processing:** Analyzes and formats data, including interaction with CSV files using a Pandas-based agent.
*   **File Management:** Reads from and writes to local files to store intermediate or final results.

#### Inputs
*   **Implicit Goal:** The agent is pre-configured with the goal to find winning Boston Marathon times for the past 5 years (ending in 2025) and generate a table.
*   **Environment Variable:** `GOOGLE_API_KEY` (for Google Gemini LLM access).

#### Outputs
*   A structured table containing the year, winner's name, country of origin, and winning time for the Boston Marathon. This output is typically displayed or saved to a file.