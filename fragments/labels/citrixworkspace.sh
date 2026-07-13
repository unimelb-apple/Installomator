citrixworkspace)
    name="Citrix Workspace"
    type="pkgInDmg"
    URL="https://www.citrix.com/downloads/workspace-app/mac/workspace-app-for-mac-latest.html"
    curlHeaders=(-H 'sec-ch-ua-platform: "macOS"' -H 'user-agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36')
    appNewVersion=$(/usr/bin/curl -s "${URL}" "${curlHeaders[@]}" | xmllint --html --xpath 'string(//p[contains(., "Version")])' 2>/dev/null - | cut -d' ' -f3 | awk -F'(' '{print $1}')
    downloadURL="https:$(/usr/bin/curl -s "${URL}#ctx-dl-eula-external" "${curlHeaders[@]}" | xmllint --html --xpath "string(//a[contains(@rel,'downloads.citrix.com')]/@rel)" 2>/dev/null -)"
    versionKey="CitrixVersionString"
    expectedTeamID="S272Y5R93J"
    ;;
