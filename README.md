# homebrew-mcp-tools

This is the Homebrew tap for MCP-related tools maintained by [Daniele Albano](https://github.com/danielealbano).

At the moment it provides:

* [`mcp-for-azure-devops-boards`](https://github.com/danielealbano/mcp-for-azure-devops-boards)
  A Model Context Protocol (MCP) server exposing Azure DevOps Boards.
  *Previously distributed as `azure-devops-boards-mcp-rust`.*

More tools may be added to this tap in the future.

---

## Installation

First, add the tap:

```bash
brew tap danielealbano/mcp-tools
```

Then install the tool:

```bash
brew install mcp-for-azure-devops-boards
```

After installation, the binary will be available on your `PATH`:

```bash
mcp-for-azure-devops-boards --help
```

If you previously installed `azure-devops-boards-mcp-rust` from this tap and have run:

```bash
brew update
brew upgrade
```

Homebrew will transparently upgrade you to `mcp-for-azure-devops-boards` (provided you’ve configured the formula rename in the tap).

### Supported platforms

Currently the formula for `mcp-for-azure-devops-boards` targets:

* **macOS (Apple Silicon, aarch64)**

Other platforms (Linux, Windows) are distributed via GitHub Releases for the main project repository and can be downloaded directly from there.

---

## Upgrading

To get the latest version from this tap:

```bash
brew update
brew upgrade mcp-for-azure-devops-boards
```

If you still have the old formula name locally, `brew upgrade` will migrate you to the renamed formula once the tap is updated accordingly.

---

## Contributing

Issues and pull requests are welcome in this repository for:

* Bug fixes or improvements to existing formulas
* New MCP-related tools that should be added to the tap

For changes to the tools themselves (for example new features in `mcp-for-azure-devops-boards`), please open issues or pull requests in the respective project repositories.

---

## License

The formulas in this tap follow the licenses of their respective tools.
Please refer to each tool’s repository for licensing details.
