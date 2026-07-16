sub init()
    print "MainScene - Initializing"
    
    m.top.backgroundColor = "0x000000FF"
    
    ' Get content group
    m.contentGroup = m.top.findNode("contentGroup")
    
    ' Create and display HomeScreen
    homeScreen = CreateObject("roSGNode", "HomeScreen")
    m.contentGroup.appendChild(homeScreen)
    
    print "MainScene - Initialization Complete"
end sub
