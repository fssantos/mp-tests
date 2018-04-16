//changes current directory in order to avoid test script paths problems
var process = require('process');
if (process.argv.length < 3) {
    console.log("Lack of parameters. Try node server <TestScript>");
    process.exit();
}

const testScriptToExecute = process.argv[2];
const scriptConfig = require(`./testScripts/${testScriptToExecute}.js`);


var app = require('express')();
var http = require('http').Server(app);
var io = require('socket.io')(http);

const config = require("./config/config.json");
const { startTests } = require("./src/Tests.js");

var connectedMachines = [];

app.get('/', function (req, res) {
    res.sendFile(__dirname + '/index.html');
});

io.on('connection', function (socket) {

    socket.on('machine_infos', function (data, response) {
        connectedMachines.push({
            "name": data.name,
            "socket": socket
        });

        connectedMachines.length == scriptConfig.minimumNumberOfMachinesToStartTesting ? startTests(connectedMachines, scriptConfig.testsScripts) : {}
    });

    socket.on('disconnect', function () {
        connectedMachines = connectedMachines.filter(machine => machine.socket != socket);
    });
});


http.listen(3000, function () {
    console.log('listening on *:3000');
});
