BROKEN-powerpc =	fails at runtime, the UI is totally blank

COMMENT-main =	2D and 3D game engine
COMMENT-sharp=	.NET libs for mono/C# module of Godot

VERSION =	3.6.2
PKGNAME =	godot3-${VERSION}
SHARPFILES_V =	3.5.2

MULTI_PACKAGES =	-main -sharp
PKGSPEC-main =	godot->=${VERSION},<4

WANTLIB += ${COMPILER_LIBCXX} BulletCollision BulletDynamics BulletSoftBody
WANTLIB += GL LinearMath X11 Xcursor Xext
WANTLIB += Xi Xinerama Xrandr Xrender c enet execinfo
WANTLIB += intl m mbedcrypto mbedtls mbedx509 mpcdec ogg opus
WANTLIB += opusfile pcre2-32 sndio steam_api theora theoradec
WANTLIB += usbhid vorbis vorbisfile vpx webp
WANTLIB += zstd

WANTLIB-main =	${WANTLIB} Xss

SITES.sharp =		https://thfr.info/distfiles/
DISTFILES.sharp =	godot-${SHARPFILES_V}-mono-glue.tar.gz \
			godot-${SHARPFILES_V}-nuget-packages.tar.xz

DIST_TUPLE +=	codeberg godotsteam godotsteam v3.20 godotsteam # MIT

MODSCONS_FLAGS =	CFLAGS="${CFLAGS}" \
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
			custom_modules=${WRKSRC}/godotsteam

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
			security/mbedtls

.include <bsd.port.arch.mk>

.if ${PROPERTIES:Mmono}
USE_WXNEEDED =		Yes
USE_NOBTCFI =		Yes
PORTHOME = 		${WRKDIR}/nugethome
# mono-native is dlopened when using the mono/C#/godot-sharp parts
WANTLIB-main +=		mono-native
# needed by files in share/godot/GodotSharp/Mono/lib/
WANTLIB-sharp =		execinfo m pthread z
MODSCONS_FLAGS +=	module_mono_enabled=yes \
			mono_prefix=${LOCALBASE} \
			mono_static=yes
BUILD_DEPENDS +=	devel/msbuild
LIB_DEPENDS +=		lang/mono
LIB_DEPENDS-sharp =
RUN_DEPENDS-sharp =
RUN_DEPENDS-main =	games/godot/pack1,-sharp
GLUEDIR =		${WRKDIR}/godot-${SHARPFILES_V}-mono-glue
MONOSUFFIX =		.mono
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
	@${MODSCONS_BUILD_TARGET} tools=no  target=release \
		CXXFLAGS="${CXXFLAGS} -Wno-deprecated-register -DSUSPEND_SCREENSAVER=1" \
		LINKFLAGS="${LDFLAGS} -lintl -lmpcdec -lusbhid -lXss"

do-install:
	@${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot.x11.opt.${BINSUFFIX}${MONOSUFFIX} \
		${PREFIX}/bin/godot3
.if ${PROPERTIES:Mmono}
	${INSTALL_DATA_DIR} ${PREFIX}/share/godot3
	cp -R	${WRKBUILD}/bin/GodotSharp ${PREFIX}/share/godot3/
.endif
	${INSTALL_MAN_DIR} ${PREFIX}/man/man6
	${INSTALL_MAN} ${WRKSRC}/misc/dist/linux/godot.6 \
		${PREFIX}/man/man6/godot3.6

.include <bsd.port.mk>
