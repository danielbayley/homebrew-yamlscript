class Ys < Formula
  desc "Program in YAML — Code is Data"
  homepage "https://yamlscript.org"
  version "0.1.86"
  license "MIT"
  head "https://github.com/yaml/yamlscript.git", branch: "main"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_arm do
      url "https://github.com/yaml/yamlscript/releases/download/0.1.86/ys-0.1.86-macos-aarch64.tar.xz"
      sha256 "4fd0ee35d9d73e6c7578f05447a977767116419874af38a10f450221409b36ba"
    end
    on_intel do
      url "https://github.com/yaml/yamlscript/releases/download/0.1.86/ys-0.1.86-macos-x64.tar.xz"
      sha256 "b028cb93843e0563101b22f36b342f949ac50ed481a95a71c98142a87c46461f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/yaml/yamlscript/releases/download/0.1.86/ys-0.1.86-linux-aarch64.tar.xz"
      sha256 "6a0682546dd3837d9db73624b7d8d0506e9160c5deb10341e3b292afccd30ebb"
    end
    on_intel do
      url "https://github.com/yaml/yamlscript/releases/download/0.1.86/ys-0.1.86-linux-x64.tar.xz"
      sha256 "c95cbf3a7a1e1fcf5b3da32152ea4ccf019445ed408e7ca40e1a4dcc824618a7"
    end
  end

  def install
    bin.install "ys"
    bin.install "ys-0"
    bin.install "ys-#{version}"
  end

  test do
    assert_equal "YAMLScript #{version}\n",
      pipe_output("#{bin}/ys --version")
  end
end
