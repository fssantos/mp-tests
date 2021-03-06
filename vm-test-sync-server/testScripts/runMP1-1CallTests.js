const setupMachineTests = require('./SetupMachineTests');
const localDevicesTests = require('./LocalDevicesTests');
const layoutTests = require('./LayoutTests');

module.exports = {
    minimumNumberOfMachinesToStartTesting: 2,
    testsScripts: [
        {
            slave: ["Lucy", "Lisa"],
            scriptToExecute: "call_tests/checkIfDialIsReady.mcr"
        },
        {
            slave: ["Lucy"],
            scriptToExecute: "call_tests/1-1startACallToLisa.mcr"
        },
        {
            slave: ["Lucy", "Lisa"],
            scriptToExecute: "call_tests/1-1isOnCall.mcr"
        },
        {
            slave: ["Lucy", "Lisa"],
            scriptToExecute: "call_tests/1-1isReceivingVideoCorrectly.mcr"
        },
        {
            slave: ["Lucy"],
            scriptToExecute: "call_tests/finishACall.mcr"
        },
        {
            slave: ["Lucy", "Lisa"],
            scriptToExecute: "call_tests/checkIfDialIsReady.mcr"
        },
        {
            slave: ["Lucy"],
            scriptToExecute: "call_tests/1-1startACallToLisa.mcr"
        },
        {
            slave: ["Lisa"],
            scriptToExecute: "call_tests/finishACall.mcr"
        },
        {
            slave: ["Lucy", "Lisa"],
            scriptToExecute: "call_tests/checkIfDialIsReady.mcr"
        },

        {},
        {},
    ]
}



