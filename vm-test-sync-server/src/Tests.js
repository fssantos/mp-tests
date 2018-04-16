var fs = require('fs')
var logger;
var testCounter = 1;

exports.startTests = function (connectedMachines, testsScriptQueue) {


    testCounter = 1;
    logger = fs.createWriteStream(`./reports/server_log_${Date.now()}.txt`, {
        flags: 'a'
    })


    runNextTest([...connectedMachines], [...testsScriptQueue]);
};

function runNextTest(connectedMachines, testsScriptQueue) {

    if (testsScriptQueue.length != 0) {
        var currentTest = testsScriptQueue.shift();

        var filteredMachines = connectedMachines.filter(machine => currentTest.slave.includes(machine.name));
        var numberOfResponses = filteredMachines.length;

        filteredMachines.forEach(machine => {
            machine.socket.emit('RUN_A_TEST', { scriptToExecute: currentTest.scriptToExecute },
                response => {
                    saveTestLog(machine.name, response);
                    //console.log({ from: machine.name, response: response });
                    numberOfResponses--;
                    numberOfResponses == 0 ? runNextTest(connectedMachines, testsScriptQueue) : {};

                }
            );
        })
    }
    else {
        finishTestSession()
    }
};

function saveTestLog(machineName, response) {
    console.log(`Test ${testCounter};From ${machineName};${response}`);
    logger.write(`Test ${testCounter};From ${machineName};${response}\r\n`);
    testCounter++;

}

function finishTestSession() {
    console.log('All tests were executed');
    logger.end(); //closes stream on report txt.file
}

