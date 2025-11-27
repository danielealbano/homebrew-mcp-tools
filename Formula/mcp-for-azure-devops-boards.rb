class McpForAzureDevopsBoards < Formula
  desc "MCP server for Azure DevOps Boards"
  homepage "https://github.com/danielealbano/mcp-for-azure-devops-boards"
  version "0.3.1"
  url "https://github.com/danielealbano/mcp-for-azure-devops-boards/releases/download/v0.3.1/mcp-for-azure-devops-boards-v0.3.1-macos-aarch64.tar.gz"
  sha256 "2a9df71e6e240cccdcef0156a676dee8f1f817e9783b1656a6ffde2dd70a70e1"
  license "MIT" # or whatever you actually use

  def install
    # Install the new binary
    bin.install "mcp-for-azure-devops-boards"

    # Compatibility wrapper for the old name
    (bin/"azure-devops-boards-mcp-rust").write <<~EOS
      #!/bin/bash
      echo "⚠️  azure-devops-boards-mcp-rust has been renamed to mcp-for-azure-devops-boards." >&2
      echo "   Please update your scripts / aliases to use 'mcp-for-azure-devops-boards'." >&2
      exec "#{bin}/mcp-for-azure-devops-boards" "$@"
    EOS
    chmod 0755, bin/"azure-devops-boards-mcp-rust"
  end

  def caveats
    <<~EOS
      The CLI was renamed from `azure-devops-boards-mcp-rust` to `mcp-for-azure-devops-boards`.

      A compatibility wrapper for `azure-devops-boards-mcp-rust` is still installed but may be
      removed in a future release. Please update any scripts or aliases to use the new name.
    EOS
  end

  test do
    system "#{bin}/mcp-for-azure-devops-boards", "--help"
    system "#{bin}/azure-devops-boards-mcp-rust", "--help"
  end
end
