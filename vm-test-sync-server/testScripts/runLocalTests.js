const setupMachineTests = require('./SetupMachineTests');
const localDevicesTests = require('./LocalDevicesTests');
const layoutTests = require('./LayoutTests');

module.exports = {
    machinesToWakeup: ["vm-lucy"],
    testsScripts: [...setupMachineTests.testsScripts,
    ...localDevicesTests.testsScripts,
    ...layoutTests.testsScripts]
}



