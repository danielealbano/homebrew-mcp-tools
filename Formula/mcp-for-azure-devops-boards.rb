class McpForAzureDevopsBoards < Formula
  desc "MCP server for Azure DevOps Boards"
  homepage "https://github.com/danielealbano/mcp-for-azure-devops-boards"
  version "0.5.0"
  url "https://github.com/danielealbano/mcp-for-azure-devops-boards/releases/download/v0.5.0/mcp-for-azure-devops-boards-v0.5.0-macos-aarch64.tar.gz"
  sha256 "54c848be4afaadc0911b4e71f4c10025365e2c3360a2a9f816ab7b63f1190ff0"
  license "MIT"

  def install
    bin.install "mcp-for-azure-devops-boards"
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
