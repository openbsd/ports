// c.f. https://mike.kaply.com/2016/05/24/default-profile-directory-doesnt-work-in-firefox-46/

const {classes: Cc, interfaces: Ci, utils: Cu} = Components;
Cu.import("resource://gre/modules/Services.jsm");
Cu.import("resource://gre/modules/FileUtils.jsm");

var profileDir = Services.dirsvc.get("ProfD", Ci.nsIFile);
var certDBFile = profileDir.clone();
certDBFile.append("cert8.db")
// If cert8.db isn't there, it's a new profile
if (!certDBFile.exists()) {
  var defaultProfileDir = Services.dirsvc.get("GreD", Ci.nsIFile);
  defaultProfileDir.append("browser");
  defaultProfileDir.append("defaults");
  defaultProfileDir.append("profile");
  try {
    copyDir(defaultProfileDir, profileDir);
  } catch (e) {
    Components.utils.reportError(e);
  }
}
 
function copyDir(aOriginal, aDestination) {
  var enumerator = aOriginal.directoryEntries;
  while (enumerator.hasMoreElements()) {
    var file = enumerator.getNext().QueryInterface(Components.interfaces.nsIFile);
    if (file.isDirectory()) {
      var subdir = aDestination.clone();
      subdir.append(file.leafName);
      try {
        subdir.create(Ci.nsIFile.DIRECTORY_TYPE, FileUtils.PERMS_DIRECTORY);
        copyDir(file, subdir);
      } catch (e) {
        Components.utils.reportError(e);
      }
    } else {
      try {
        file.copyTo(aDestination, null);
      } catch (e) {
        Components.utils.reportError(e);
      }
    }
  }
}

// OpenBSD: Initialize <ProfD>/torrc to an empty config.
// The first SAVECONF to the tor control socket will overwrite it.

// mimic the code in tl-util.jsm from tor-launcher
var dir = Cc["@mozilla.org/file/directory_service;1"].
           getService(Ci.nsIProperties).get("ProfD", Ci.nsIFile);
var file = dir.parent.parent;
file.append("torrc");
if (!file.exists()) {
    var stream = Cc["@mozilla.org/network/file-output-stream;1"].
                 createInstance(Ci.nsIFileOutputStream);
    stream.init(file, 0x04 | 0x08 | 0x20, 0600, 0);
    stream.write("#\n", 2);
    stream.close();
}
