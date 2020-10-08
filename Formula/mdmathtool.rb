class Mdmathtool < Formula
    desc "A tool to help work with inline math in Markdown files, written in Java."
    homepage "https://github.com/sohalsdr/mdMathTool"
    # Remember to update the url for every release!
    url "https://github.com/sohalsdr/mdMathTool/releases/download/1.2.0/mdMathTool_1.2.0.jar"
    # Regen the SHA256 too, can be done using shasum -a 256 <file>
    sha256 "6423e6274c6cf6aded7e9cdd0d0df9a2365304bf9896482f0a9816436bac2683"
    license "MIT"
    revision 1
  
    bottle :unneeded
  
    depends_on java: "1.8"
  
    def install
      libexec.install "mdMathTool_#{version}.jar"
      (libexec/"bin").write_jar_script libexec/"mdMathTool_#{version}.jar", "mdmathtool"
      (libexec/"bin/mdmathtool").chmod 0755
      (bin/"mdmathtool").write_env_script libexec/"bin/mdmathtool", Language::Java.java_home_env("1.8")
    end
  
  end