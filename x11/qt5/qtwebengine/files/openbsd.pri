include(linux.pri)

gn_args +=	clang_use_chrome_plugins=false \
		enable_basic_printing=true \
		enable_nacl=false \
		enable_one_click_signin=true \
		enable_print_preview=true \
		enable_remoting=false \
		ffmpeg_branding=\"Chrome\" \
		fieldtrial_testing_like_official_build=true \
		is_cfi=false \
		is_clang=true \
		is_debug=false \
		is_official_build=true \
		optimize_webui=false \
		proprietary_codecs=true \
		treat_warnings_as_errors=false \
		use_allocator=\"none\" \
		use_bundled_fontconfig=false \
		use_cups=true \
		use_dbus=true \
		use_gnome_keyring=false \
		use_jumbo_build=true \
		use_kerberos=false \
		use_sndio=true \
		use_sysroot=false \
		use_system_ffmpeg=false \
		use_system_freetype=false \
		use_system_harfbuzz=true \
		use_system_minizip=true \
		use_udev=false
