// OpenBSD-specific defaults overrides and stuff necessary for Tor browser
pref("browser.safebrowsing.enabled", false);
pref("browser.safebrowsing.malware.enabled", false);
pref("spellchecker.dictionary_path", "${LOCALBASE}/share/mozilla-dicts/");
pref("extensions.enabledScopes", 5);
pref("general.config.filename", "tor-browser.cfg");
pref("general.config.obscure_value", 0);
