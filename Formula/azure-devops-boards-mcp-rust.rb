class AzureDevopsBoardsMcpRust < Formula
  desc "MCP server exposing Azure DevOps Boards"
  homepage "https://github.com/danielealbano/azure-devops-boards-mcp-rust"
  url "https://github.com/danielealbano/azure-devops-boards-mcp-rust/releases/download/v0.1.0/azure-devops-boards-mcp-rust-v0.1.0-macos-aarch64.tar.gz"
  sha256 "<FILL_ME_IN>"
  license "MIT" # or whatever you actually use

  def install
    bin.install "azure-devops-boards-mcp-rust"
  end

  test do
    system "#{bin}/azure-devops-boards-mcp-rust", "--help"
  end
end
