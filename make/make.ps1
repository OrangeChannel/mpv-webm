Set-Location ./src
#grab header sources
mkdir ../temp
Get-Content requires.lua, options.lua | Set-Content ../temp/header.lua
#grab moon files
Get-Content util.moon, video_to_screen.moon, formatsBase.moon, formats/*.moon, Page.moon, EncodeWithProgress.moon, encode.moon, CropPage.moon, EncodeOptionsPage.moon, PreviewPage.moon, MainPage.moon, main.moon | Set-Content ../temp/main.moon
moonc -o ../temp/main.lua ../temp/main.moon
Get-Content ../temp/header.lua, ../temp/main.lua | Set-Content ../build/webm.lua
Remove-Item ../temp -Recurse
