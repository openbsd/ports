BROKEN-powerpc =	fails at runtime, the UI is totally blank

COMMENT-main =	2D and 3D game engine
COMMENT-editor=	2D and 3D game engine (with the editor)

V =		4.2.1pl0
COMMIT =	f77bc872114ebe77f1604db47b81016ff478ce17
PKGNAME =	godot4-${V}
DIST_TUPLE +=	github godotengine godot ${COMMIT} .
REVISION =	0

CATEGORIES =	games

HOMEPAGE =	https://godotengine.org/

MAINTAINER =	Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -editor

WANTLIB-main += ${COMPILER_LIBCXX} SPIRV X11 Xau Xcursor Xdmcp Xext
WANTLIB-main += Xfixes Xi Xinerama Xrandr Xrender c dbus-1 enet execinfo
WANTLIB-main += expat fontconfig freetype glib-2.0 glslang intl m mbedcrypto
WANTLIB-main += mbedtls mbedx509 miniupnpc mpcdec ogg pcre2-32 pcre2-8
WANTLIB-main += sharpyuv sndio speechd theora theoradec usbhid vorbis
WANTLIB-main += vorbisfile webp wslay xcb xkbcommon zstd

WANTLIB-editor = ${WANTLIB-main}

# C++17
COMPILER =	base-clang ports-gcc

MODULES =	devel/scons

# Building with module_mono_enabled requires msbuild and to fix the
# sharedlib_ext in modules/mono/config.py to '.so.1.0'
MODSCONS_FLAGS =	CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS} -Wno-deprecated-register" \
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
			progress=no \
			pulseaudio=no \
			use_sowrap=no \
			verbose=yes \
			warnings=extra \
			wayland=no \
			werror=no

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
			audio/musepack \
			audio/speech-dispatcher \
			devel/gettext,-runtime \
			devel/pcre2 \
			graphics/glslang \
			graphics/libwebp \
			multimedia/libtheora \
			net/enet \
			net/miniupnp/miniupnpc \
			security/polarssl \
			x11/dbus,-main \
			x11/xkbcommon \
			www/wslay

RUN_DEPENDS-editor =	devel/desktop-file-utils

DEBUG_PACKAGES =	${BUILD_PACKAGES}
NO_TEST =		Yes

DPB_PROPERTIES =	parallel

.if ${MACHINE_ARCH:Mhppa}
LDFLAGS +=     -latomic
WANTLIB +=     atomic
.endif

post-extract:
	cp -R ${FILESDIR}/sndio ${WRKDIST}/drivers

pre-configure:
	${SUBST_CMD} ${WRKSRC}/misc/dist/linux/*.desktop

do-build:
	@${MODSCONS_BUILD_TARGET} target=template_release
	@${MODSCONS_BUILD_TARGET} target=editor

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot.linuxbsd.template_release \
		${PREFIX}/bin/godot4
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot.linuxbsd.editor \
		${PREFIX}/bin/godot4-editor
	${INSTALL_MAN_DIR} ${PREFIX}/man/man6
	${INSTALL_MAN} ${WRKSRC}/misc/dist/linux/godot.6 \
		${PREFIX}/man/man6/godot4.6
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/icon.svg \
		${PREFIX}/share/pixmaps/godot4.svg
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/misc/dist/linux/*.desktop \
		${PREFIX}/share/applications/org.godotengine.Godot4.desktop
	${INSTALL_DATA_DIR} ${PREFIX}/share/metainfo
	${INSTALL_DATA} ${WRKSRC}/misc/dist/linux/*.appdata.xml \
		${PREFIX}/share/metainfo/org.godotengine.Godot4.appdata.xml

.include <bsd.port.mk>
