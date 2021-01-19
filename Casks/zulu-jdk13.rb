cask 'zulu-jdk13' do
    version '13.35.1025,13.0.5'
    sha256 'E3C249B4A18703202DF90F309CFFCE6E0B6CCE50D622CADF849923F2BDAFE0C9'
    url "https://cdn.azul.com/zulu/bin/zulu#{version.before_comma}-ca-jdk#{version.after_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 13'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
