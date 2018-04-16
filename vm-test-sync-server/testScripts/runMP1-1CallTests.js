const setupMachineTests = require('./SetupMachineTests');
const localDevicesTests = require('./LocalDevicesTests');
const layoutTests = require('./LayoutTests');

module.exports = {
    minimumNumberOfMachinesToStartTesting: 2,
    testsScripts: [
        {
            slave: ["Lucy"],
            scriptToExecute: "call_tests/1-1isStartingCallCorrectly.mcr"
        },
        {
            slave: ["Lucy", "Lisa"],
            scriptToExecute: "call_tests/1-1-isOnCall.mcr"
        },
        {},
        {},
    ]
}



