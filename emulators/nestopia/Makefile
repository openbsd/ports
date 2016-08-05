# $OpenBSD: Makefile,v 1.7 2016/08/05 05:26:42 bentley Exp $

COMMENT-main =		accurate Nintendo Entertainment System emulator
COMMENT-libretro =	Nintendo Entertainment System core for retroarch

V =			1.47
DISTNAME =		nestopia-$V
PKGNAME-main =		nestopia-$V
PKGNAME-libretro =	libretro-nestopia-$V

MULTI_PACKAGES =	-main -libretro

.include <bsd.port.arch.mk>

CATEGORIES =		emulators

HOMEPAGE =		http://0ldsk00l.ca/nestopia/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB-main += SDL2 ao c gdk-3 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB-main += gtk-3 m pthread stdc++ z archive epoxy
WANTLIB-libretro =	m pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nestopiaue/}
EXTRACT_SUFX =		.tgz

RUN_DEPENDS-main =	devel/desktop-file-utils
LIB_DEPENDS-main =	archivers/libarchive \
			audio/libao \
			devel/sdl2 \
			x11/gtk+3
LIB_DEPENDS-libretro =

MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS} `sdl2-config --cflags` \
				`pkg-config --cflags gtk+-3.0`" \
			CXXFLAGS="${CFLAGS} `sdl2-config --cflags` \
				`pkg-config --cflags gtk+-3.0`"
FAKE_FLAGS =		PREFIX="${WRKINST}/${TRUEPREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

post-build:
	cd ${WRKSRC}/libretro && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} ${ALL_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/libretro
	${INSTALL_DATA} ${WRKSRC}/libretro/nestopia_libretro.so \
		${PREFIX}/lib/libretro

.include <bsd.port.mk>
