sub init()
    print "TvScreen - Initializing"
    
    print "TvScreen - Initialization Complete"
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press
        return false
    end if
    
    if key = "back"
        print "TvScreen - Back pressed"
        ' TODO: Navigate back to HomeScreen
        return true
    end if
    
    return false
end function