class AggregatePrefixes < Formula
  include Language::Python::Virtualenv

  desc "Fast IPv4 and IPv6 prefix aggregator written in Python"
  homepage "https://github.com/lamehost/aggregate-prefixes/"
  url "https://github.com/lamehost/aggregate-prefixes/archive/refs/tags/v0.7.1.tar.gz"
  version "0.7.1"
  sha256 "23442c4f393ea855ed874c8c66f053cb03e21f85f2f33e49b1fab13c05a41924"
  license "MIT"

  depends_on "python@3.10"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/aggregate-prefixes", "--help"
  end
end
