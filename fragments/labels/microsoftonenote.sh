microsoftonenote)
    name="Microsoft OneNote"
    type="pkg"
    MAUSource="https://res.public.onecdn.static.microsoft/mro1cdnstorage/C1297A47-86C4-4C1F-97FA-950631F94777/MacAutoupdate/0409ONMC2019.xml"
    downloadURL=$(curl -fsL $MAUSource | xmllint --xpath '//array/dict[1]/key[text()="FullUpdaterLocation"]/following-sibling::string[1]/text()' - 2>/dev/null)
    appNewVersion=$(curl -fsL $MAUSource | xmllint --xpath '//array/dict[1]/key[text()="Update Version"]/following-sibling::string[1]/text()' - 2>/dev/null)
    expectedTeamID="UBF8T346G9"
    versionKey="CFBundleVersion"
    blockingProcesses=( "Microsoft OneNote" )
    ;;
