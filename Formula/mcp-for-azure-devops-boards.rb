class McpForAzureDevopsBoards < Formula
  desc "MCP server for Azure DevOps Boards"
  homepage "https://github.com/danielealbano/mcp-for-azure-devops-boards"
  version "0.3.1"
  url "https://github.com/danielealbano/mcp-for-azure-devops-boards/releases/download/v0.3.1/mcp-for-azure-devops-boards-v0.3.1-macos-aarch64.tar.gz"
  sha256 "367bfc529b7a4601ac65db56dbef4883e3a9a5918e4db31a6c38228fc9d22934"
  license "MIT" # or whatever you actually use

  def install
    # Install the new binary
    bin.install "mcp-for-azure-devops-boards"

    # Backwards-compatible CLI name for a deprecation window
    bin.install_symlink "mcp-for-azure-devops-boards" => "azure-devops-boards-mcp-rust"
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
