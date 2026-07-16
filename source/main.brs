sub Main()
    print "BHIPTV - Launching Application"
    
    ' Get the screen dimensions
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    
    ' Create the main scene
    scene = screen.CreateScene("MainScene")
    screen.show()
    
    ' Main event loop
    while true
        msg = wait(0, m.port)
        if type(msg) = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub
