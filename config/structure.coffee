module.exports =

  # See styling options for tabs and other native components in app/common/native-styles/ios.css or app/common/native-styles/android.css
  tabs: [
    {
      title: "Home"
      id: "home"
      location: "newsfeed#index" # Supersonic module#view type navigation
    }
    {
       title: "Search"
       id: "all"
       location: "oxford#index"
    }
    {
      title: "Delivery"
      id: "delivery"
      location: "delivery#index" 
    }
    

  ]

  #preloads: [
   # {
    #  id: "about"
     # location: "newsfeed#about"
#    }
 # ]

#    drawers:
 #     left:
  #      id: "leftDrawer"
   #     location: "example#drawer"
#        showOnAppLoad: false
 #     options:
  #      animation: "swingingDoor"


  # initialView:
   #  id: "initialView"
    # location: "example#initial-view"
    
