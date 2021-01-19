cask 'zulu-jdk11' do
    version '11.43.1021,11.0.9.1'
    sha256 '260A9D1BD3ACDA5B82BD3D61096FB3EEC9985E5C37817EE2D3BB21F1134F0B36'

    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 11'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
