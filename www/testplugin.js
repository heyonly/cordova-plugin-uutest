cordova.define("cordova-plugin-test.cocoacordova",function(require,exports,module){
    var exec = require("cordova/exec");
    function model() {};
    model.prototype.downloadfile = function(success,fail,option) {
    	exec(success,fail,'CocoaPlugin','downloadfile',option);	
    }         
    module.exports = new model();
});
