# $OpenBSD: Makefile,v 1.31 2021/12/23 02:25:33 thfr Exp $

BROKEN-powerpc =	fails at runtime, the UI is totally blank

COMMENT =	2D and 3D game engine

V =		3.4.2
GODOTSTEAM_V =	g34-s152-gs311
DISTNAME =	godot-${V}-stable
PKGNAME =	godot-${V}
CATEGORIES =	games
HOMEPAGE =	https://godotengine.org/
MAINTAINER =	Omar Polo <op@omarpolo.com>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender c enet execinfo freetype intl m mbedtls mbedcrypto
WANTLIB += mbedx509 mpcdec ogg opus opusfile png sndio steam_api theora
WANTLIB += theoradec vorbis vorbisfile webp xcb z pcre2-32 vpx zstd

# C++14
COMPILER =	base-clang ports-gcc

MASTER_SITES =	https://downloads.tuxfamily.org/godotengine/${V}/
MASTER_SITES0 =	https://github.com/Gramps/GodotSteam/archive/refs/tags/
DISTFILES =     ${DISTNAME}${EXTRACT_SUFX} \
		${GODOTSTEAM_V}.tar.gz:0
EXTRACT_SUFX =	.tar.xz
DIST_SUBDIR =   ${PKGNAME}

MODULES =		devel/scons
# Can't disable builtin_bullet until devel/bullet has been updated to 2.88
# Building with module_mono_enabled requires msbuild and to fix the
# sharedlib_ext in modules/mono/config.py to '.so.1.0'
MODSCONS_FLAGS =	CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS} -Wno-deprecated-register" \
			LINKFLAGS="${LDFLAGS} -lintl -lmpcdec" \
			builtin_enet=no \
			builtin_freetype=no \
			builtin_glew=no \
			builtin_libmpcdec=no \
			builtin_libogg=no \
			builtin_libpng=no \
			builtin_libtheora=no \
			builtin_libvorbis=no \
			builtin_libvpx=no \
			builtin_libwebp=no \
			builtin_mbedtls=no \
			builtin_opus=no \
			builtin_pcre2=no \
			builtin_zlib=no \
			builtin_zstd=no \
			custom_modules=${WRKDIR}/GodotSteam-${GODOTSTEAM_V}/godotsteam \
			progress=no \
			pulseaudio=no \
			target=release_debug \
			verbose=yes \
			warnings=extra \
			werror=no

# The raycast module requires embree which is enabled on all 64bit
# arches but actually supports only amd64.
.if ! ${MACHINE_ARCH:Mamd64}
MODSCONS_FLAGS +=	module_raycast_enabled="false"
.endif

LIB_DEPENDS =		archivers/zstd \
			audio/libvorbis \
			audio/musepack \
			audio/opusfile \
			devel/gettext,-runtime \
			devel/pcre2 \
			games/goldberg_emulator \
			graphics/libwebp \
			graphics/png \
			multimedia/libtheora \
			multimedia/libvpx \
			net/enet \
			security/polarssl
RUN_DEPENDS =		devel/desktop-file-utils

NO_TEST =		Yes

DPB_PROPERTIES =	parallel

.if ${MACHINE_ARCH:Mhppa}
LDFLAGS +=     -latomic
WANTLIB +=     atomic
.endif

CFLAGS +=	-I${LOCALBASE}/include/goldberg_emulator

post-extract:
	cp -R ${FILESDIR}/sndio ${WRKDIST}/drivers

pre-configure:
	${SUBST_CMD} ${WRKSRC}/drivers/unix/os_unix.cpp
	sed -E -i 's/ISteamHTMLSurface:://g' \
		${WRKDIR}/GodotSteam-${GODOTSTEAM_V}/godotsteam/godotsteam.cpp
	sed -E -i 's/Connection_DEPRECATED/Connection/g' \
		${WRKDIR}/GodotSteam-${GODOTSTEAM_V}/godotsteam/godotsteam.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot* \
		${PREFIX}/bin/godot
	${INSTALL_MAN_DIR} ${PREFIX}/man/man6
	${INSTALL_MAN} ${WRKSRC}/misc/dist/linux/godot.6 \
		${PREFIX}/man/man6
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/icon.svg \
		${PREFIX}/share/pixmaps/godot.svg
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA} ${WRKSRC}/misc/dist/linux/*.desktop \
		${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/metainfo
	${INSTALL_DATA} ${WRKSRC}/misc/dist/linux/*.appdata.xml \
		${PREFIX}/share/metainfo/

.include <bsd.port.mk>
