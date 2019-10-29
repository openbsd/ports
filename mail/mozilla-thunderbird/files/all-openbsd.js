// OpenBSD-specific defaults overrides
// enable systemwide extensions by default
pref("extensions.autoDisableScopes", 3);
pref("spellchecker.dictionary_path", "${LOCALBASE}/share/mozilla-dicts/");
// quick fix to effectively disable sandbox for now
pref("security.sandbox.pledge.main", "notyet");
pref("security.sandbox.pledge.content", "notyet");
