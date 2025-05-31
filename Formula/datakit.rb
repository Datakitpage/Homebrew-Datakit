class Datakit < Formula
    desc "Modern web-based data analysis tool - process CSV/JSON files locally with complete privacy"
    homepage "https://datakit.page"
    url "https://registry.npmjs.org/datakit-cli/-/datakit-cli-0.1.0.tgz"
    sha256 "b978b9035a7d826606edae2866c3be05ae0d5267617895a8d5ce6b254921eb8c"
    license "MIT"
    version "0.1.0"
  
    depends_on "node"
  
    def install
      system "npm", "install", *Language::Node.std_npm_install_args(libexec)
      bin.install_symlink Dir["#{libexec}/bin/*"]
      
      # Create man page (optional)
      # man1.install "man/datakit.1" if File.exist?("man/datakit.1")
    end
  
    test do
      # Test that the command exists and shows version
      output = shell_output("#{bin}/datakit --version 2>&1")
      assert_match "0.1.0", output
      
      # Test that help works
      help_output = shell_output("#{bin}/datakit --help 2>&1")
      assert_match "DataKit", help_output
      
      # Test info command
      info_output = shell_output("#{bin}/datakit info 2>&1")
      assert_match "DataKit", info_output
    end
  
    def caveats
      <<~EOS
        🎉 DataKit has been installed successfully!
        
        To start analyzing your data:
          datakit
        
        This will open DataKit in your browser at http://localhost:3000
        
        Other useful commands:
          datakit --help           Show all available options
          datakit serve --no-open  Start server without opening browser
          datakit --port 8080      Start on specific port
          datakit info             Show system information
          datakit update           Check for updates
        
        📚 Documentation: https://docs.datakit.page
        🌐 Try online: https://datakit.page
        
        For support: https://github.com/datakit/datakit/issues
      EOS
    end
  end