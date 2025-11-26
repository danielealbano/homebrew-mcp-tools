class AzureDevopsBoardsMcpRust < Formula
  desc "MCP server exposing Azure DevOps Boards"
  homepage "https://github.com/danielealbano/azure-devops-boards-mcp-rust"
  version "0.3.0"
  url "https://github.com/danielealbano/azure-devops-boards-mcp-rust/releases/download/v0.3.0/azure-devops-boards-mcp-rust-v0.3.0-macos-aarch64.tar.gz"
  sha256 "6f7f70cb4655e1fdff809b3b4b166a487ea44ef88381ceac1293e9d55deb83a7"
  license "MIT" # or whatever you actually use

  def install
    bin.install "azure-devops-boards-mcp-rust"
  end

  test do
    system "#{bin}/azure-devops-boards-mcp-rust", "--help"
  end
end
