sub init()
    print "MoviesScreen - Initializing"
    
    print "MoviesScreen - Initialization Complete"
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press
        return false
    end if
    
    if key = "back"
        print "MoviesScreen - Back pressed"
        ' TODO: Navigate back to HomeScreen
        return true
    end if
    
    return false
end function
