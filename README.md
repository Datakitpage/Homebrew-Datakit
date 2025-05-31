# DataKit Homebrew Tap

Official Homebrew formulae for [DataKit](https://datakit.page) - Modern web-based data analysis tool.

## Installation

```bash
# Add the DataKit tap
brew tap aminkhorrami/datakit

# Install DataKit
brew install datakit

# Start analyzing your data
datakit
```

## What is DataKit?

DataKit is a modern web-based data analysis tool that processes CSV, JSON, Excel, and Parquet files up to 4-5GB directly in your browser. No data ever leaves your machine.

### Key Features

-  **Complete Privacy** - All processing happens locally in your browser
-  **High Performance** - Powered by DuckDB and WebAssembly  
-  **SQL + Visualization** - Write queries and create charts in one place
-  **Multiple Formats** - Support for CSV, JSON, Excel, and Parquet files
-  **No Setup Required** - Works immediately without configuration

## Usage

```bash
# Start DataKit (opens browser automatically)
datakit

# Start server without opening browser
datakit serve --no-open

# Start on specific port
datakit --port 8080

# View system information
datakit info

# Check for updates
datakit update

# Show help
datakit --help
```

## Alternative Installation Methods

If Homebrew isn't your preference:

- **Python:** `pip install datakit-local`
- **Node.js:** `npm install -g datakit-cli`
- **Docker:** `docker run -p 8080:80 datakitpage/datakit`

## Documentation

- ** Full Documentation:** [docs.datakit.page](https://docs.datakit.page)
- ** Try Online:** [datakit.page](https://datakit.page)

## Updating

```bash
# Update Homebrew formulae
brew update

# Upgrade DataKit to latest version
brew upgrade datakit
```

## Support

- **Issues:** [DataKit Issues](https://github.com/datakit/datakit/issues)
- **Tap Issues:** [Homebrew Tap Issues](https://github.com/yourusername/homebrew-datakit/issues)
- **Documentation:** [docs.datakit.page](https://docs.datakit.page)

## License

This tap is licensed under the MIT License. See [LICENSE](LICENSE) for details.

DataKit itself is also MIT licensed.