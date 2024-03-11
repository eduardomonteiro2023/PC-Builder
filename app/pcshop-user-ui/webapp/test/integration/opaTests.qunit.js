sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pcshopuserui/test/integration/FirstJourney',
		'pcshopuserui/test/integration/pages/ComputerObjectPage'
    ],
    function(JourneyRunner, opaJourney, ComputerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pcshopuserui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheComputerObjectPage: ComputerObjectPage
                }
            },
            opaJourney.run
        );
    }
);