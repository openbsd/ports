# $OpenBSD: Makefile,v 1.9 2019/09/02 18:20:12 thfr Exp $

COMMENT =	2D and 3D game engine

V =		3.0.6
DISTNAME =	godot-${V}-stable
PKGNAME =	godot-${V}
CATEGORIES =	games
HOMEPAGE =	https://godotengine.org/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>
REVISION =	3

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender c crypto enet execinfo freetype intl m mpcdec
WANTLIB += ogg opus opusfile png ssl theora theoradec vorbis vorbisfile
WANTLIB += webp xcb z pcre2-32 vpx zstd

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://downloads.tuxfamily.org/godotengine/${V}/
EXTRACT_SUFX =	.tar.xz

MODULES =		devel/scons
# Can't disable builtin_bullet until devel/bullet has been updated to 2.88
# Building with module_mono_enabled requires msbuild (which we don't have
# yet) and to fix the sharedlib_ext in modules/mono/config.py to '.so.1.0'
# Disable pulseaudio which is currently not working
MODSCONS_FLAGS =	CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS}" \
			CXXFLAGS="${CXXFLAGS}" \
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
			builtin_openssl=no \
			builtin_opus=no \
			builtin_pcre2=no \
			builtin_zlib=no \
			builtin_zstd=no \
			dev=yes \
			platform=x11 \
			progress=no \
			pulseaudio=no \
			target=release_debug
LIB_DEPENDS =		archivers/zstd \
			audio/libvorbis \
			audio/musepack \
			audio/opusfile \
			devel/gettext,-runtime \
			devel/libexecinfo \
			devel/pcre2 \
			graphics/libwebp \
			graphics/png \
			multimedia/libtheora \
			multimedia/libvpx \
			net/enet

NO_TEST =		Yes

.if ${MACHINE_ARCH:Mhppa} || ${MACHINE_ARCH:Mpowerpc}
LDFLAGS +=     -latomic
WANTLIB +=     atomic
.endif

# Fix relocation overflows
.if ${MACHINE_ARCH:Mpowerpc}
CFLAGS +=      -mlongcall
CXXFLAGS +=    -mlongcall
LDFLAGS +=     -Wl,--relax
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/drivers/unix/os_unix.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot* \
		${PREFIX}/bin/godot

.include <bsd.port.mk>
