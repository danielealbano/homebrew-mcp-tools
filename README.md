# homebrew-mcp-tools

This is the Homebrew tap for MCP–related tools maintained by [Daniele Albano](https://github.com/danielealbano).

At the moment it provides:

- [`azure-devops-boards-mcp-rust`](https://github.com/danielealbano/azure-devops-boards-mcp-rust)  
  A Model Context Protocol (MCP) server exposing Azure DevOps Boards.

More tools may be added to this tap in the future.

---

## Installation

First, add the tap:

```bash
brew tap danielealbano/mcp-tools
````

Then install the tool you want, for example:

```bash
brew install azure-devops-boards-mcp-rust
```

After installation, the binary will be available on your `PATH`:

```bash
azure-devops-boards-mcp-rust --help
```

### Supported platforms

Currently the formula for `azure-devops-boards-mcp-rust` targets:

* **macOS (Apple Silicon, aarch64)**

Other platforms (Linux, Windows) are distributed via GitHub Releases for the main project repository and can be downloaded directly from there.

---

## Upgrading

To get the latest version from this tap:

```bash
brew update
brew upgrade azure-devops-boards-mcp-rust
```

---

## Contributing

Issues and pull requests are welcome in this repository for:

* Bug fixes or improvements to existing formulas
* New MCP–related tools that should be added to the tap

For changes to the tools themselves (for example new features in `azure-devops-boards-mcp-rust`), please open issues or pull requests in the respective project repositories.

---

## License

The formulas in this tap follow the licenses of their respective tools.
Please refer to each tool’s repository for licensing details.
