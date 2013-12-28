var mv = require('mv');
var fs = require('fs');

// (String src file) -> [String files].
var readFile = function(src) {
	return fs.readdirSync(src);
};

var errorHandler = function(err) {
	if (err) throw err;
};

// (String file ->
// | *.hs move into src
// | *.o || *.hi move into compiled
// | .exe move into exe).
var moveFile = function(file) {
	var splitString = file.split('.');
	var name = splitString[0];
	if (splitString.length === 1) {
		if (name !== 'exe' && name !== 'src' && name !== 'compiled') {
			mv(file, 'exe/' + file, errorHandler);
		}
	}
	else if (splitString.length > 1) {
		var extension = splitString[1];
		if (extension === 'hi' || extension === 'o') {
			mv(file, 'compiled/' + file, errorHandler);
		}
		else if (extension === 'hs') {
			mv(file, 'src/' + file, errorHandler);
		}
	}
};

// [string files]
var files = readFile('./');

for (var i = 0; i < files.length; i++) {
	moveFile(files[i]);
}
