include(linux.pri)

gn_args +=	enable_nacl=false \
		is_debug=false \
		enable_one_click_signin=true \
		enable_remoting=false \
		use_kerberos=false \
		use_sndio=true \
		use_cups=true \
		use_jumbo_build=true \
		is_clang=true \
		use_sysroot=false \
		treat_warnings_as_errors=false \
		clang_use_chrome_plugins=false \
		use_allocator=\"none\" \
		fieldtrial_testing_like_official_build=true \
		extra_cppflags=\"-idirafter ${LOCALBASE}/include -idirafter ${X11BASE}/include\"

gn_args +=	extra_ldflags=\"-L${LOCALBASE}/lib -L${X11BASE}/lib\"

gn_args +=	ffmpeg_branding=\"Chrome\" \
		proprietary_codecs=true

gn_args +=	is_official_build=true \
		is_component_build=false


gn_args +=   enable_basic_printing=true \
             enable_print_preview=true \
             use_dbus=true \
             use_udev=false

# Once the port works better, we can think about readding the diverse `use_system_<foo>`
# for bundled libraries.
# For now, only add very few system libraries.
# Upcoming qt version, form FreeBSD
#gn_args += use_system_yasm=true
