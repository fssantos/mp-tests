var process = require('process');
process.chdir('../MPTestSuite/runAllTests/'); //changes current directory in order to avoid test script paths problems

if (process.argv.length < 3) {
    console.log("Lack of parameters. Try node client <MachineName>");
    process.exit();
}

const MACHINE_NAME = process.argv[2];



const config = require("./config/config.json");
const { exec } = require('child_process');

var io = require('socket.io-client');
var socket = io(`http://${config.SERVER_IP}`);
var readLastLine = require('read-last-lines');

socket.on('connect', function () {
    socket.emit('machine_infos', { name: MACHINE_NAME }, function (response) {
    });
});

socket.on('RUN_A_TEST', function (data, response) {
    runTestScript(data.scriptToExecute, function (result) {
        response(result)
    });
    // response({ msg: "recebido" })

});

function runTestScript(scriptToExecute, callback) {

    console.log(scriptToExecute);
    exec(`MacroRecorder.exe ../${scriptToExecute} /a /c`, (err, stdout, stderr) => {
        if (err) {
            console.log(err);
            // node couldn't execute the command
            return;
        }

        readLastLine.read('../reports/Tests_Report.txt', 1).
            then((line) => { callback(line) }).
            catch((error) => console.log(error));
    });
}


