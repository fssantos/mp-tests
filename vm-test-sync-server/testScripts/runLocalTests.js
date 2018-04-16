const setupMachineTests = require('./SetupMachineTests');
const localDevicesTests = require('./LocalDevicesTests');
const layoutTests = require('./LayoutTests');

module.exports = {
    minimumNumberOfMachinesToStartTesting: 1,
    testsScripts: [...setupMachineTests.testsScripts,
    ...localDevicesTests.testsScripts,
    ...layoutTests.testsScripts]
}



