sub init()
    print "MainScene - Initializing"
    
    ' Set background color to black
    m.top.backgroundColor = "0x000000FF"
    
    ' Get references to UI elements
    m.bgRect = m.top.findNode("bgRect")
    m.titleLabel = m.top.findNode("titleLabel")
    m.versionLabel = m.top.findNode("versionLabel")
    m.contentGroup = m.top.findNode("contentGroup")
    
    ' Configure background rectangle
    m.bgRect.color = "0x000000FF"
    m.bgRect.width = 1920
    m.bgRect.height = 1080
    
    ' Configure title label
    m.titleLabel.color = "0xFFFFFFFF"
    m.titleLabel.text = "BHIPTV"
    
    ' Configure version label
    m.versionLabel.color = "0xFFFFFFFF"
    m.versionLabel.text = "Version 0.1"
    
    print "MainScene - Initialization Complete"
end sub

sub onKeyEvent(key as string, press as boolean) as boolean
    if press
        if key = "back"
            return true
        end if
    end if
    return false
end sub
