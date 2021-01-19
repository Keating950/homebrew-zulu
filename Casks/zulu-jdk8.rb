cask 'zulu-jdk8' do
  version '8.50.0.1017,8.0.275'
    sha256 '80F1E48D017896E05B5722A3DE19F799E5CB9854EC5A1883D0E7A9A9ED4E7B23'
    url "https://cdn.azul.com/zulu/bin/zulu#{version.after_comma}-ca-jdk#{version.before_comma}-macosx_aarch64.dmg",
        referer: 'https://www.azul.com/downloads/zulu-community/'
    name 'Azul Zulu® JDK 8'
    homepage 'https://www.azul.com/downloads/zulu-community/'

    depends_on macos: '>= :big_sur'

    pkg "Double-Click to Install Zulu #{version.major}.pkg"

    uninstall pkgutil: "com.azulsystems.zulu.#{version.major}"
  end
