module.exports = {

    minimumNumberOfMachinesToStartTesting: 1,
    testsScripts: [
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "preconfigurator/isMPOpen.mcr"
        },
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "/preconfigurator/TestRoomExists.mcr"
        },
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "preconfigurator/DefaultLayoutIsSelected.mcr"
        },
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "preconfigurator/isAMconfRoomAvailable.mcr"
        },
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "preconfigurator/SetbrowsertoGoogle.mcr"
        }
    ]
}
