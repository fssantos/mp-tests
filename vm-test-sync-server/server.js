//changes current directory in order to avoid test script paths problems
var process = require('process');
if (process.argv.length < 3) {
    console.log("Lack of parameters. Try node server <TestScript>");
    process.exit();
}
const { exec } = require('child_process');
const testScriptToExecute = process.argv[2];
const scriptConfig = require(`./testScripts/${testScriptToExecute}.js`);


var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);

const config = require("./config/config.json");
const { startTests } = require("./src/Tests.js");

var connectedMachines = [];

wakeupMachines(scriptConfig.machinesToWakeup);

app.get('/', function (req, res) {
    res.sendFile(__dirname + '/index.html');
});

io.on('connection', function (socket) {

    socket.on('machine_infos', function (data, response) {
        connectedMachines.push({
            "name": data.name,
            "socket": socket
        });

        console.log(data.name + "is connected");

        connectedMachines.length == scriptConfig.machinesToWakeup.length ? startTests(connectedMachines, scriptConfig.testsScripts)
            : {}
    });

    socket.on('disconnect', function () {
        connectedMachines = connectedMachines.filter(machine => machine.socket != socket);
        console.log("Some machine has disconnected");
    });
});


http.listen(3000, function () {
    console.log('listening on *:3000');
});

function wakeupMachines(machinesToWakeup) {

    console.log(machinesToWakeup);

    machinesToWakeup.forEach(machineName => {

        exec(`powershell.exe ../azure-scripts/start_${machineName}.ps1`, (err, stdout, stderr) => {

            console.log("Executando...")
            if (err) {
                console.log(err);
                return;
            }
            if (stdout) { console.log(stdout) }
        });

    })
};

function deallocateMachines() {

}
