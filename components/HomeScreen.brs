sub init()
    print "HomeScreen - Initializing"
    
    ' Get menu item backgrounds and labels
    m.tvItemBg = m.top.findNode("tvItemBg")
    m.peliculasItemBg = m.top.findNode("peliculasItemBg")
    m.configItemBg = m.top.findNode("configItemBg")
    
    m.tvItemLabel = m.top.findNode("tvItemLabel")
    m.peliculasItemLabel = m.top.findNode("peliculasItemLabel")
    m.configItemLabel = m.top.findNode("configItemLabel")
    
    ' Array of menu items for easier management
    m.menuItems = [
        { bg: m.tvItemBg, label: m.tvItemLabel, text: "TV" },
        { bg: m.peliculasItemBg, label: m.peliculasItemLabel, text: "Películas" },
        { bg: m.configItemBg, label: m.configItemLabel, text: "Configuración" }
    ]
    
    ' Track selected menu item (0 = TV, 1 = Películas, 2 = Configuración)
    m.selectedIndex = 0
    
    ' Update menu styling
    m.updateMenuStyle()
    
    print "HomeScreen - Initialization Complete"
end sub

sub m.updateMenuStyle()
    for i = 0 to m.menuItems.count() - 1
        if i = m.selectedIndex
            ' Selected item: blue
            m.menuItems[i].bg.color = "0x0066CCFF"
            m.menuItems[i].label.color = "0xFFFFFFFF"
        else
            ' Unselected item: gray
            m.menuItems[i].bg.color = "0x666666FF"
            m.menuItems[i].label.color = "0xCCCCCCFF"
        end if
    end for
end sub

function onKeyEvent(key as string, press as boolean) as boolean
    if not press
        return false
    end if
    
    if key = "up"
        if m.selectedIndex > 0
            m.selectedIndex = m.selectedIndex - 1
            m.updateMenuStyle()
        end if
        return true
    else if key = "down"
        if m.selectedIndex < m.menuItems.count() - 1
            m.selectedIndex = m.selectedIndex + 1
            m.updateMenuStyle()
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
    selectedItem = m.menuItems[m.selectedIndex]
    print "HomeScreen - Selected: " + selectedItem.text
end sub
