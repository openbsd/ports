
// OpenBSD: Initialize ~/.tor-browser/torrc to an empty config.
// The first SAVECONF to the tor control socket will overwrite it.
var Cc = Components.classes;
var Ci = Components.interfaces;
var file = Cc["@mozilla.org/file/directory_service;1"].
           getService(Ci.nsIProperties).get("DefProfRt", Ci.nsIFile);
file.append("torrc");
if (!file.exists()) {
    var stream = Cc["@mozilla.org/network/file-output-stream;1"].
                 createInstance(Ci.nsIFileOutputStream);
    stream.init(file, 0x04 | 0x08 | 0x20, 0600, 0);
    stream.write("#\n", 2);
    stream.close();
}
