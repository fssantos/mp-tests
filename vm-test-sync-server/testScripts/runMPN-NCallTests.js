const setupMachineTests = require('./SetupMachineTests');
const localDevicesTests = require('./LocalDevicesTests');
const layoutTests = require('./LayoutTests');

module.exports = {
    minimumNumberOfMachinesToStartTesting: 3,
    testsScripts: [
        {
            slave: ["Lucy", "Lisa", "Leona"],
            scriptToExecute: "call_tests/checkIfDialIsReady.mcr"
        },
        {
            slave: ["Lucy"],
            scriptToExecute: "call_tests/N-NstartACallToLisa&Leona.mcr" //should add one more call to this test;
        },
        {
            slave: ["Lucy", "Lisa", "Leona"],
            scriptToExecute: "call_tests/1-1isOnCall.mcr"
        },
        {
            slave: ["Lucy", "Lisa", "Leona"],
            scriptToExecute: "call_tests/N-NisReceivingVideoCorrectly.mcr"
        },
        {
            slave: ["Lucy"],
            scriptToExecute: "call_tests/finishACall.mcr"
        },
        {
            slave: ["Lucy", "Lisa", "Leona"],
            scriptToExecute: "call_tests/checkIfDialIsReady.mcr"
        },
        {
            slave: ["Lucy"],
            scriptToExecute: "call_tests/N-NstartACallToLisa&Leona.mcr" //should add one more call to this test;
        },
        {
            slave: ["Lisa"],
            scriptToExecute: "call_tests/finishACall.mcr"
        },
        {
            slave: ["Lucy", "Lisa", "Leona"],
            scriptToExecute: "call_tests/checkIfDialIsReady.mcr"
        },

        {},
        {},
    ]
}



