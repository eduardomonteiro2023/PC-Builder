sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pcshop/pcshopui/test/integration/FirstJourney',
		'pcshop/pcshopui/test/integration/pages/ComputerList',
		'pcshop/pcshopui/test/integration/pages/ComputerObjectPage'
    ],
    function(JourneyRunner, opaJourney, ComputerList, ComputerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pcshop/pcshopui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheComputerList: ComputerList,
					onTheComputerObjectPage: ComputerObjectPage
                }
            },
            opaJourney.run
        );
    }
);