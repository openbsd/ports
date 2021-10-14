# $OpenBSD: Makefile,v 1.27 2021/10/14 14:33:29 thfr Exp $

BROKEN-powerpc =	fails at runtime, the UI is totally blank
BROKEN-powerpc64 =	Unknown ISA
BROKEN-riscv64 =	Unknown ISA
BROKEN-mips64 =		Unknown ISA

COMMENT =	2D and 3D game engine

V =		3.3.4
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
WANTLIB += mbedx509 mpcdec ogg opus opusfile png sndio theora theoradec
WANTLIB += vorbis vorbisfile webp xcb z pcre2-32 vpx zstd

# C++14
COMPILER =	base-clang ports-gcc

MASTER_SITES =	https://downloads.tuxfamily.org/godotengine/${V}/
EXTRACT_SUFX =	.tar.xz

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
			progress=no \
			pulseaudio=no \
			target=release_debug \
			verbose=yes \
			warnings=extra \
			werror=no
LIB_DEPENDS =		archivers/zstd \
			audio/libvorbis \
			audio/musepack \
			audio/opusfile \
			devel/gettext,-runtime \
			devel/pcre2 \
			graphics/libwebp \
			graphics/png \
			multimedia/libtheora \
			multimedia/libvpx \
			net/enet \
			security/polarssl

NO_TEST =		Yes

DPB_PROPERTIES =	parallel

.if ${MACHINE_ARCH:Mhppa}
LDFLAGS +=     -latomic
WANTLIB +=     atomic
.endif

post-extract:
	cp -R ${FILESDIR}/sndio ${WRKDIST}/drivers

pre-configure:
	${SUBST_CMD} ${WRKSRC}/drivers/unix/os_unix.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot* \
		${PREFIX}/bin/godot

.include <bsd.port.mk>
