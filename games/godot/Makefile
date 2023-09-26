BROKEN-powerpc =	fails at runtime, the UI is totally blank

COMMENT-main =	2D and 3D game engine
COMMENT-tools=	2D and 3D game engine (with tools)
COMMENT-sharp=	.NET libs for mono/C# module of Godot

V =		3.5.3
SHARPFILES_V =	3.5.2
DISTNAME =	godot-${V}-stable
PKGNAME =	godot-${V}

CATEGORIES =	games

HOMEPAGE =	https://godotengine.org/

MAINTAINER =	Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MULTI_PACKAGES =	-main -tools -sharp

WANTLIB += ${COMPILER_LIBCXX} BulletCollision BulletDynamics BulletSoftBody
WANTLIB += GL LinearMath X11 X11-xcb Xau Xcursor Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm c drm enet execinfo
WANTLIB += intl m mbedcrypto mbedtls mbedx509 mpcdec ogg opus
WANTLIB += opusfile pcre2-32 sharpyuv sndio steam_api theora theoradec
WANTLIB += usbhid vorbis vorbisfile vpx webp xcb xcb-dri2 xcb-glx
WANTLIB += zstd

WANTLIB-main =	${WANTLIB} Xss
WANTLIB-tools =	${WANTLIB}

# C++14
COMPILER =	base-clang ports-gcc

SITES =	https://downloads.tuxfamily.org/godotengine/${V}/
EXTRACT_SUFX =	.tar.xz

SITES.sharp =		https://thfr.info/distfiles/
DISTFILES.sharp =	godot-${SHARPFILES_V}-mono-glue.tar.gz \
			godot-${SHARPFILES_V}-nuget-packages.tar.xz

DIST_TUPLE +=	github CoaguCo-Industries GodotSteam v3.20 godotsteam # MIT

MODULES =	devel/scons

MODSCONS_FLAGS =	CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
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
			custom_modules=${WRKSRC}/godotsteam \
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

DPB_PROPERTIES =	parallel

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mmono}
USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes
PORTHOME = 		${WRKDIR}/nugethome
# mono-native is dlopened when using the mono/C#/godot-sharp parts
WANTLIB-main +=		mono-native
WANTLIB-tools +=	mono-native
# needed by files in share/godot/GodotSharp/Mono/lib/
WANTLIB-sharp =		execinfo m pthread z
MODSCONS_FLAGS +=	module_mono_enabled=yes \
			mono_prefix=${LOCALBASE} \
			mono_static=yes
BUILD_DEPENDS +=	devel/msbuild
LIB_DEPENDS +=		lang/mono
LIB_DEPENDS-sharp =
RUN_DEPENDS-sharp =
RUN_DEPENDS-main =	games/godot,-sharp
RUN_DEPENDS-tools +=	devel/msbuild \
			games/godot,-sharp
GLUEDIR =	${WRKDIR}/godot-${SHARPFILES_V}-mono-glue
MONOSUFFIX =	.mono
.else
BUILD_PACKAGES :=	${BUILD_PACKAGES:N-sharp}
MONOSUFFIX =
.endif

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

DEBUG_PACKAGES =	${BUILD_PACKAGES}
NO_TEST =		Yes

CFLAGS +=	-I${LOCALBASE}/include/goldberg_emulator
CXXFLAGS +=	-I${LOCALBASE}/include/goldberg_emulator

post-extract:
	cp -R	${FILESDIR}/sndio ${WRKDIST}/drivers
	cp	${FILESDIR}/ujoy/joypad_openbsd.{cpp,h} \
		${WRKDIST}/platform/x11/
.if ${PROPERTIES:Mmono}
	mkdir -p ${PORTHOME}/.nuget
	mv	${WRKDIR}/godot-${SHARPFILES_V}-nuget-packages ${PORTHOME}/.nuget/packages
	mv	${GLUEDIR}/mono_glue.gen.cpp ${WRKSRC}/modules/mono/glue/
	mv	${GLUEDIR}/GodotSharp/GodotSharp/Generated \
		${WRKSRC}/modules/mono/glue/GodotSharp/GodotSharp/
	mv	${GLUEDIR}/GodotSharp/GodotSharpEditor/Generated \
		${WRKSRC}/modules/mono/glue/GodotSharp/GodotSharpEditor
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/misc/dist/linux/*.desktop
	${SUBST_CMD} ${WRKSRC}/modules/mono/godotsharp_dirs.cpp
	${SUBST_CMD} ${WRKSRC}/modules/mono/build_scripts/mono_configure.py

do-build:
	# Export Template build
	@${MODSCONS_BUILD_TARGET} tools=no  target=release \
		CXXFLAGS="${CXXFLAGS} -Wno-deprecated-register -DSUSPEND_SCREENSAVER=1" \
		LINKFLAGS="${LDFLAGS} -lintl -lmpcdec -lusbhid -lXss"
	# Editor build
	@${MODSCONS_BUILD_TARGET} tools=yes target=release_debug \
		CXXFLAGS="${CXXFLAGS} -Wno-deprecated-register" \
		LINKFLAGS="${LDFLAGS} -lintl -lmpcdec -lusbhid"

do-install:
	# Export Template files
	@${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot.x11.opt.${BINSUFFIX}${MONOSUFFIX} \
		${PREFIX}/bin/godot
	# Editor files
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot.x11.opt.tools.${BINSUFFIX}${MONOSUFFIX} \
		${PREFIX}/bin/godot-tools
	# GodotSharp files if built
.if ${PROPERTIES:Mmono}
	${INSTALL_DATA_DIR} ${PREFIX}/share/godot
	cp -R	${WRKBUILD}/bin/GodotSharp ${PREFIX}/share/godot/
.endif
	# Rest: man pages, icons, desktop integration
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
