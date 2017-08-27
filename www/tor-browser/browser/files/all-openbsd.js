// OpenBSD-specific defaults overrides and stuff necessary for Tor browser

pref("browser.safebrowsing.enabled", false);
pref("browser.safebrowsing.malware.enabled", false);
pref("spellchecker.dictionary_path", "${LOCALBASE}/share/mozilla-dicts/");
pref("extensions.enabledScopes", 5);
pref("general.config.filename", "tor-browser.cfg");
pref("general.config.obscure_value", 0);
// c.f. https://mike.kaply.com/2012/03/30/customizing-firefox-default-profiles/#comment-685619
pref("browser.places.smartBookmarksVersion",-1);
