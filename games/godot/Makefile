# $OpenBSD: Makefile,v 1.2 2018/05/09 20:26:47 sthen Exp $

COMMENT =	2D and 3D game engine

V =		3.0.2
DISTNAME =	godot-$V
CATEGORIES =	games
HOMEPAGE =	https://godotengine.org/
MAINTAINER =	Thomas Frohwein <frohwein@ymail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender c crypto enet execinfo freetype intl m mpcdec
WANTLIB += ogg opus opusfile png pulse pulse-simple ssl theora
WANTLIB += theoradec vorbis vorbisfile webp xcb z
WANTLIB += pcre2-32 vpx zstd

GH_ACCOUNT =		godotengine
GH_PROJECT =		godot
GH_TAGNAME =		$V-stable

MODULES =		devel/scons
# Can't disable builtin_bullet until has been updated to 2.88
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
			platform=x11 \
			progress=no \
			target=release_debug \
			verbose=yes \
			warnings=all
LIB_DEPENDS =		archivers/zstd \
			audio/musepack \
			audio/opusfile \
			audio/pulseaudio \
			devel/gettext \
			devel/pcre2 \
			graphics/libwebp \
			graphics/png \
			multimedia/libtheora \
			multimedia/libvpx \
			net/enet

NO_TEST =		Yes

pre-build:
	${SUBST_CMD} ${WRKSRC}/drivers/unix/os_unix.cpp

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/godot* \
		${PREFIX}/bin/godot

.include <bsd.port.mk>
