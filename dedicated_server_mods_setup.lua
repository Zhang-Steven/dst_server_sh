--There are two functions that will install mods, ServerModSetup and ServerModCollectionSetup. Put the calls to the functions in this file and they will be executed on boot.

--ServerModSetup takes a string of a specific mod's Workshop id. It will download and install the mod to your mod directory on boot.
	--The Workshop id can be found at the end of the url to the mod's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=350811795
	--ServerModSetup("350811795")

--ServerModCollectionSetup takes a string of a specific mod's Workshop id. It will download all the mods in the collection and install them to the mod directory on boot.
	--The Workshop id can be found at the end of the url to the collection's Workshop page.
	--Example: http://steamcommunity.com/sharedfiles/filedetails/?id=379114180
	--ServerModCollectionSetup("379114180")
    ServerModSetup("1185229307")
    ServerModSetup("1595631294")
    ServerModSetup("1694713472")
    ServerModSetup("2115943953")
    ServerModSetup("2287303119")
    ServerModSetup("2373346252")
    ServerModSetup("2477889104")
    ServerModSetup("2532301630")
    ServerModSetup("378160973")
    ServerModSetup("661253977")