module.exports = {

    minimumNumberOfMachinesToStartTesting: 1,
    testsScripts: [
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "local_tests/isMPOpen.mcr"
        },
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "local_tests/isChangingMicrophoneSettingsAlternatively.mcr"
        },
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "local_tests/isSelectingCameraWorking.mcr"
        },
        {
            name: "tu ta numa chamada?",
            description: "Master machine has called one slave and the slave machine tablet interface should be on call mode",
            slave: ["Lucy"],
            scriptToExecute: "local_tests/isStressingCameraSelectionWorking.mcr"
        }
    ]
}