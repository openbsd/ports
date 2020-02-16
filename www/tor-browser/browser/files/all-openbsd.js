// OpenBSD-specific defaults overrides and stuff necessary for Tor browser

pref("spellchecker.dictionary_path", "${LOCALBASE}/share/mozilla-dicts/");
pref("general.config.filename", "tor-browser.cfg");
pref("general.config.obscure_value", 0);
// enable pledging the content process
pref("security.sandbox.content.level", 1);
pref("security.sandbox.pledge.main","stdio rpath wpath cpath inet proc exec prot_exec flock ps sendfd recvfd dns vminfo tty drm unix fattr getpw mcast video");
pref("security.sandbox.pledge.content","stdio rpath wpath cpath inet recvfd sendfd prot_exec unix drm ps");
