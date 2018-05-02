module.exports = {

    minimumNumberOfMachinesToStartTesting: 1,
    testsScripts: [
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "layout_tests/isTestRoomAvailable.mcr"
        },
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "layout_tests/checkLayoutsRenderization.mcr"
        },
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "layout_tests/createMconfLayout.mcr"
        }
    ]
}