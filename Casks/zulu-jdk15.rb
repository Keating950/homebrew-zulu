cask 'zulu-jdk15' do
  version '15.28.1013,15.0.1'
  sha256 '055A493236ED0023216F40D4E222EBC9CEBD13BCAA8288D9F6C6C5C2D61F30EE'

  url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
      referer: 'https://www.azul.com/downloads/zulu-community/'
  name 'Azul Zulu® JDK 15'
  homepage 'https://www.azul.com/downloads/zulu-community/'

  depends_on macos: '>= :big_sur'

  pkg "Double-Click to Install Zulu #{version.major}.pkg"

  uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
end
