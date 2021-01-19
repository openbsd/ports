include(linux.pri)

#		use_jumbo_build=true \
##                extra_cppflags=\"-idirafter ${LOCALBASE}\/include -idirafter ${X11BASE}\/include\"
#
##gn_args +=	extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib\"
##
#gn_args +=	ffmpeg_branding=\"Chrome\" \
#		proprietary_codecs=true
#
#		is_component_build=true
#
#
#gn_args +=   enable_basic_printing=true \
#             enable_print_preview=true \
#

gn_args +=	enable_nacl=false \
		is_official_build=true \
		is_debug=false \
		is_cfi=false \
		use_udev=false \
		optimize_webui=false \
		enable_one_click_signin=true \
		enable_remoting=false \
		use_kerberos=false \
		use_sndio=true \
		use_cups=true \
		use_bundled_fontconfig=false \
		use_system_harfbuzz=true \
		use_system_freetype=false \
		use_gnome_keyring=false \
		is_clang=true \
		use_sysroot=false \
		treat_warnings_as_errors=false \
		clang_use_chrome_plugins=false \
		use_allocator=\"none\" \
		fieldtrial_testing_like_official_build=true \
		use_dbus=true \
		ffmpeg_branding=\"Chrome\" \
		proprietary_codecs=true \
		enable_basic_printing=true \
		enable_print_preview=true \
		closure_compile=false \
		use_jumbo_build=true
