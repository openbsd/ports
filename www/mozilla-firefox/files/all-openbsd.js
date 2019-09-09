// OpenBSD-specific defaults overrides
pref("media.autoplay.default", 1);
pref("app.shield.optoutstudies.enabled", false);
pref("app.normandy.enabled",false);
pref("browser.safebrowsing.enabled", false);
pref("browser.safebrowsing.malware.enabled", false);
pref("spellchecker.dictionary_path", "${LOCALBASE}/share/mozilla-dicts/");
// enable pledging the content process
pref("security.sandbox.content.level", 1);
pref("security.sandbox.pledge.main","stdio rpath wpath cpath inet proc exec prot_exec flock ps sendfd recvfd dns vminfo tty drm unix fattr getpw mcast video");
pref("security.sandbox.pledge.content","stdio rpath wpath cpath inet recvfd sendfd prot_exec unix drm ps");
pref("extensions.pocket.enabled", false);
pref("browser.newtabpage.enabled", false);
pref("browser.startup.homepage", "about:blank");
pref("network.trr.mode", 5);
