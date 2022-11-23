Citizen.CreateThread(function()
    exports['qb-target']:AddBoxZone("burgerfridge", vector3(-1203.71, -895.86, 14.0), 1.6, 1, {
            name="burgerfridge",
            heading=35,
            debugPoly=false,
            minZ=13.0,
            maxZ=15.6,
        }, {
                options = {
                    {
                        event = "qb-menu:OrderMenu",
                        icon = "fas fa-laptop",
                        label = "Order Ingredients!",
                        requirecid = true,
                        jobrequired = false,
                        gangrequired = false,
                        gang = "",
                        job = "",
                        cid = {"MAH44286"},  
                        stashSize = 1250000,
                        stashSlots = 125, 
                    },
                },
                distance = 1.5
            })

        exports['qb-target']:AddBoxZone("shop", vector3(-1197.78, -894.45, 14.0), 4.6, 1.2, {
            name="shop",
            heading=34,
            debugPoly=false,
            minZ=13.0,
            maxZ=14.8,
        }, {
                options = {
                    {
                        event = "qb-menu:OrderMenu",
                        icon = "fas fa-laptop",
                        label = "Order Ingredients!",
                        requirecid = true,
                        jobrequired = false,
                        gangrequired = false,
                        gang = "",
                        job = "",
                        cid = {"MAH44286"},  
                        stashSize = 1250000,
                        stashSlots = 125, 
                    },
                },
                distance = 1.5
            })
    
