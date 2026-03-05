BROKEN-powerpc =	fails at runtime, the UI is totally blank

# uses too much ram for smaller archs
ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =	2D and 3D game engine

VERSION =	4.4.1
PKGNAME =	godot44-${VERSION}
DIST_TUPLE +=	codeberg godotsteam godotsteam v4.3 godotsteam

WANTLIB += ${COMPILER_LIBCXX} SPIRV X11 Xcursor Xext Xi Xinerama
WANTLIB += Xrandr Xrender c dbus-1 enet fontconfig freetype glib-2.0
WANTLIB += glslang glslang-default-resource-limits intl m mbedcrypto
WANTLIB += mbedtls mbedx509 miniupnpc ogg pcre2-32 sndio speechd
WANTLIB += steam_api theora theoradec vorbis vorbisfile webp wslay
WANTLIB += xkbcommon zstd

# Building with module_mono_enabled requires msbuild and to fix the
# sharedlib_ext in modules/mono/config.py to '.so.1.0'
MODSCONS_FLAGS =	cflags="${CFLAGS}" \
			cxxflags="${CXXFLAGS} -Wno-deprecated-register" \
			builtin_certs=no \
			builtin_enet=no \
			builtin_libogg=no \
			builtin_libpng=no \
			builtin_libtheora=no \
			builtin_libvorbis=no \
			builtin_libwebp=no \
			builtin_wslay=no \
			builtin_mbedtls=no \
			builtin_miniupnpc=no \
			builtin_pcre2=no \
			builtin_zstd=no \
			custom_modules=${WRKSRC}/godotsteam \
			use_sowrap=no \
			wayland=no

# not in ports
MODSCONS_FLAGS +=	builtin_embree=true \
			builtin_msdfgen=true \
			builtin_recast=true \
			builtin_rvo2=true \
			builtin_squish=true \
			builtin_xatlas=true

# requires freetype with Brotli support, see
# https://github.com/godotengine/godot/issues/64090
MODSCONS_FLAGS +=	builtin_freetype=yes

# having freetype builtin requires also the following to be used builtin
MODSCONS_FLAGS +=	builtin_libpng=true \
			builtin_zlib=true \
			builtin_graphite=true \
			builtin_harfbuzz=true

# breaks the build if not embedded
MODSCONS_FLAGS +=	builtin_glslang=no \
			builtin_icu=true

# The raycast module requires embree which is enabled on all 64bit
# arches but actually supports only amd64.
.if ! ${MACHINE_ARCH:Mamd64}
MODSCONS_FLAGS +=	module_raycast_enabled="false"
.endif

LIB_DEPENDS =		archivers/zstd \
			audio/libvorbis \
			audio/speech-dispatcher \
			devel/gettext,-runtime \
			devel/pcre2 \
			games/goldberg_emulator \
			graphics/glslang \
			graphics/libwebp \
			multimedia/libtheora \
			net/enet \
			net/miniupnp/miniupnpc \
			security/mbedtls \
			x11/dbus,-main \
			x11/xkbcommon \
			www/wslay

.if ${MACHINE_ARCH:Mhppa}
LDFLAGS +=     -latomic
WANTLIB +=     atomic
.endif

CFLAGS +=	-I${LOCALBASE}/include/goldberg_emulator
CXXFLAGS +=	-I${LOCALBASE}/include/goldberg_emulator

post-extract:
	cp -R ${FILESDIR}/sndio ${WRKDIST}/drivers

pre-configure:
	${SUBST_CMD} ${WRKSRC}/misc/dist/linux/*.desktop

do-build:
	@${MODSCONS_BUILD_TARGET} target=template_release

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot.linuxbsd.template_release \
		${PREFIX}/bin/godot44
	${INSTALL_MAN_DIR} ${PREFIX}/man/man6
	${INSTALL_MAN} ${WRKSRC}/misc/dist/linux/godot.6 \
		${PREFIX}/man/man6/godot44.6

.include <bsd.port.mk>
