BROKEN-powerpc =	fails at runtime, the UI is totally blank

COMMENT-main =	2D and 3D game engine
COMMENT-tools=	2D and 3D game engine (with tools)

V =		3.5.1
# Later versions of GodotSteam need isteamdualsense.h.
# Can only update once that is part of games/goldberg_emulator
GODOTSTEAM_V =	g35-s155-gs3171
DISTNAME =	godot-${V}-stable
PKGNAME =	godot-${V}

CATEGORIES =	games

HOMEPAGE =	https://godotengine.org/

MAINTAINER =	Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -tools

WANTLIB += ${COMPILER_LIBCXX} BulletCollision BulletDynamics BulletSoftBody
WANTLIB += GL LinearMath X11 X11-xcb Xau Xcursor Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm c drm enet execinfo
WANTLIB += intl m mbedcrypto mbedtls mbedx509 mpcdec ogg opus
WANTLIB += opusfile pcre2-32 sndio steam_api theora theoradec
WANTLIB += usbhid vorbis vorbisfile vpx webp xcb xcb-dri2 xcb-glx
WANTLIB += zstd

WANTLIB-tools = ${WANTLIB}

# C++14
COMPILER =	base-clang ports-gcc

MASTER_SITES =	https://downloads.tuxfamily.org/godotengine/${V}/
MASTER_SITES0 =	https://github.com/Gramps/GodotSteam/archive/refs/tags/
DISTFILES =     ${DISTNAME}${EXTRACT_SUFX} \
		${GODOTSTEAM_V}.tar.gz:0
EXTRACT_SUFX =	.tar.xz
DIST_SUBDIR =   ${PKGNAME}

MODULES =	devel/scons

# Building with module_mono_enabled requires msbuild and to fix the
# sharedlib_ext in modules/mono/config.py to '.so.1.0'
MODSCONS_FLAGS =	CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS} -Wno-deprecated-register" \
			LINKFLAGS="${LDFLAGS} -lintl -lmpcdec -lusbhid" \
			builtin_bullet=no \
			builtin_enet=no \
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
			custom_modules=${WRKSRC}/GodotSteam/godotsteam \
			progress=no \
			pulseaudio=no \
			verbose=yes \
			warnings=extra \
			werror=no

# requires freetype with Brotli support, see
# https://github.com/godotengine/godot/issues/64090
MODSCONS_FLAGS += builtin_freetype=yes

# The raycast module requires embree which is enabled on all 64bit
# arches but actually supports only amd64.
.if ! ${MACHINE_ARCH:Mamd64}
MODSCONS_FLAGS +=	module_raycast_enabled="false"
.endif

LIB_DEPENDS =		archivers/zstd \
			audio/libvorbis \
			audio/musepack \
			audio/opusfile \
			devel/bullet \
			devel/gettext,-runtime \
			devel/pcre2 \
			games/goldberg_emulator \
			graphics/libwebp \
			multimedia/libtheora \
			multimedia/libvpx \
			net/enet \
			security/polarssl

RUN_DEPENDS-tools =	devel/desktop-file-utils

DEBUG_PACKAGES =	${BUILD_PACKAGES}
NO_TEST =		Yes

DPB_PROPERTIES =	parallel

.include <bsd.port.arch.mk>
.if ${MACHINE_ARCH} == "riscv64"
BINSUFFIX =		rv64
.elif ${PROPERTIES:Mlp64}
BINSUFFIX =		64
.else
BINSUFFIX =		32
.endif

.if ${MACHINE_ARCH:Mhppa}
LDFLAGS +=     -latomic
WANTLIB +=     atomic
.endif

CFLAGS +=	-I${LOCALBASE}/include/goldberg_emulator

# symlink to allow patching GodotSteam
post-extract:
	cp -R	${FILESDIR}/sndio ${WRKDIST}/drivers
	cp	${FILESDIR}/ujoy/joypad_openbsd.{cpp,h} \
		${WRKDIST}/platform/x11/
	ln -sf	${WRKDIR}/GodotSteam-${GODOTSTEAM_V} ${WRKSRC}/GodotSteam

pre-configure:
	${SUBST_CMD} ${WRKSRC}/misc/dist/linux/*.desktop

do-build:
	@${MODSCONS_BUILD_TARGET} tools=no  target=release
	@${MODSCONS_BUILD_TARGET} tools=yes target=release_debug

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot.x11.opt.${BINSUFFIX} \
		${PREFIX}/bin/godot
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot.x11.opt.tools.${BINSUFFIX} \
		${PREFIX}/bin/godot-tools
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
