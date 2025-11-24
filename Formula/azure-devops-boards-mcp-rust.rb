class AzureDevopsBoardsMcpRust < Formula
  desc "MCP server exposing Azure DevOps Boards"
  homepage "https://github.com/danielealbano/azure-devops-boards-mcp-rust"
  version "0.1.0"
  url "https://github.com/danielealbano/azure-devops-boards-mcp-rust/releases/download/v0.1.0/azure-devops-boards-mcp-rust-v0.1.0-macos-aarch64.tar.gz"
  sha256 "ba1537bb6f4861cff0fbbc38af82fb5a991f2343c5b9df2e30b2a96ad0fdeb5f"
  license "MIT" # or whatever you actually use

  def install
    bin.install "azure-devops-boards-mcp-rust"
  end

  test do
    system "#{bin}/azure-devops-boards-mcp-rust", "--help"
  end
end
