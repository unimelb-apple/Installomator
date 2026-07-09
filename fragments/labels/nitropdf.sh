nitropdf)
    name="Nitro PDF Pro"
    type="dmg"
    appNewVersion=$(curl -s "https://downloads.gonitro.com/macos/pro.rss" | xmllint --xpath '//rss/channel/item/title/text()' - | head -n 1 | sed 's/[^0-9.]//g')
    downloadURL="https://downloads.gonitro.com/macos/Nitro%20PDF%20Pro_${appNewVersion}.dmg"    
    expectedTeamID="37C4TX3D45"
    blockingProcesses=( "Nitro PDF Pro" )
    ;;
