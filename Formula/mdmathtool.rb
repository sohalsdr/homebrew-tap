class Javarepl < Formula
    desc "A tool to help work with inline math in Markdown files, written in Java."
    homepage "https://github.com/sohalsdr/mdMathTool"
    # Remember to update the url for every release!
    url "https://github.com/sohalsdr/mdMathTool/releases/download/1.1.2/mdMathTool_1.1.2.jar"
    # Regen the SHA256 too, can be done using shasum -a 256 <file>
    sha256 "5a87dfe8efa80b15c5f124f9f4c9343cc62d4df82d564010d5288449de85cceb"
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