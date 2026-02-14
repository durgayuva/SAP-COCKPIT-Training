sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"com/pr/prapproval/test/integration/pages/prtableSetList",
	"com/pr/prapproval/test/integration/pages/prtableSetObjectPage"
], function (JourneyRunner, prtableSetList, prtableSetObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('com/pr/prapproval') + '/test/flp.html#app-preview',
        pages: {
			onTheprtableSetList: prtableSetList,
			onTheprtableSetObjectPage: prtableSetObjectPage
        },
        async: true
    });

    return runner;
});

