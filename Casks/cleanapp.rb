cask 'cleanapp' do
  if MacOS.version <= :leopard
    version '3.4.12'
    sha256 'e6020a82949a55ae1eb5b7e45f736bc8b51c7d5e94503f0e4a88b5f8940ab269'
  elsif MacOS.version <= :lion
    version '4.0.8'
    sha256 'e77359586731e1ae863351846afc9fd34a7b9774625122001c0d92593a340ff1'
  else
    version '5.1.1'
    sha256 'c2839596edba012b823fd96dcc0b9073399d3128b1c47afcc9175ea566ac94df'
  end

  url "https://download.syniumsoftware.com/CleanApp/CleanApp%20#{version}.dmg"
  name 'Synium Software CleanApp'
  homepage 'http://www.syniumsoftware.com/cleanapp'

  app 'CleanApp.app'

  zap delete: [
                '/Library/Application Support/CleanApp',
                '/Library/LaunchDaemons/com.syniumsoftware.CleanAppDaemon.plist',
                '~/Library/Application Support/CleanApp',
                '~/Library/Caches/com.syniumsoftware.CleanApp',
                '~/Library/PreferencePanes/CleanApp Logging Service.prefPane',
                '~/Library/Preferences/com.syniumsoftware.CleanApp.plist',
                '~/Library/Preferences/com.syniumsoftware.CleanAppDaemon.plist',
                '~/Library/Preferences/com.syniumsoftware.stats_config.plist',
                '~/Library/Saved Application State/com.syniumsoftware.CleanApp.savedState',
              ]
end
