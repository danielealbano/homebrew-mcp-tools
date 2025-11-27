class McpForAzureDevopsBoards < Formula
  desc "MCP server for Azure DevOps Boards"
  homepage "https://github.com/danielealbano/mcp-for-azure-devops-boards"
  version "0.3.1"
  url "https://github.com/danielealbano/mcp-for-azure-devops-boards/releases/download/v0.3.1/mcp-for-azure-devops-boards-v0.3.1-macos-aarch64.tar.gz"
  sha256 "2a9df71e6e240cccdcef0156a676dee8f1f817e9783b1656a6ffde2dd70a70e1"
  license "MIT" # or whatever you actually use

  def install
    bin.install "azure-devops-boards-mcp-rust"
  end

  test do
    system "#{bin}/mcp-for-azure-devops-boards", "--help"
  end
end
