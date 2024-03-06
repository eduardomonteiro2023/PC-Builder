sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'pcbuilderui/test/integration/FirstJourney',
		'pcbuilderui/test/integration/pages/ComputerList',
		'pcbuilderui/test/integration/pages/ComputerObjectPage'
    ],
    function(JourneyRunner, opaJourney, ComputerList, ComputerObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('pcbuilderui') + '/index.html'
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