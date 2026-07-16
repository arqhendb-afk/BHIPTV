sub init()
    print "HomeScreen - Initializing"
    
    ' Get UI elements
    m.tvButtonBg = m.top.findNode("tvButtonBg")
    m.peliculasButtonBg = m.top.findNode("peliculasButtonBg")
    m.tvButtonLabel = m.top.findNode("tvButtonLabel")
    m.peliculasButtonLabel = m.top.findNode("peliculasButtonLabel")
    
    ' Track selected button (0 = TV, 1 = Películas)
    m.selectedIndex = 0
    
    ' Update button styling
    m.updateButtonStyle()
    
    print "HomeScreen - Initialization Complete"
end sub

sub m.updateButtonStyle()
    ' TV Button
    if m.selectedIndex = 0
        m.tvButtonBg.color = "0x0066CCFF"
        m.tvButtonLabel.color = "0xFFFFFFFF"
    else
        m.tvButtonBg.color = "0x444444FF"
        m.tvButtonLabel.color = "0xCCCCCCFF"
    end if
    
    ' Películas Button
    if m.selectedIndex = 1
        m.peliculasButtonBg.color = "0x0066CCFF"
        m.peliculasButtonLabel.color = "0xFFFFFFFF"
    else
        m.peliculasButtonBg.color = "0x444444FF"
        m.peliculasButtonLabel.color = "0xCCCCCCFF"
    end if
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press
        return false
    end if
    
    if key = "up"
        if m.selectedIndex > 0
            m.selectedIndex = m.selectedIndex - 1
            m.updateButtonStyle()
        end if
        return true
    else if key = "down"
        if m.selectedIndex < 1
            m.selectedIndex = m.selectedIndex + 1
            m.updateButtonStyle()
        end if
        return true
    else if key = "ok"
        m.handleSelection()
        return true
    else if key = "back"
        return true
    end if
    
    return false
end function

sub m.handleSelection()
    if m.selectedIndex = 0
        print "HomeScreen - TV selected"
        ' TODO: Navigate to TvScreen
    else if m.selectedIndex = 1
        print "HomeScreen - Películas selected"
        ' TODO: Navigate to MoviesScreen
    end if
end sub
