# $OpenBSD: Makefile,v 1.6 2016/01/11 09:19:39 bentley Exp $

COMMENT =		accurate Nintendo Entertainment System emulator

DISTNAME =		nestopia-1.47

CATEGORIES =		emulators

HOMEPAGE =		http://0ldsk00l.ca/nestopia/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += SDL2 ao c gdk-3 gdk_pixbuf-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 m pthread stdc++ z archive epoxy

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=nestopiaue/}
EXTRACT_SUFX =		.tgz

RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		archivers/libarchive \
			audio/libao \
			devel/sdl2 \
			x11/gtk+3

MAKE_FLAGS =		CC="${CC}" \
			CXX="${CXX}" \
			CFLAGS="${CFLAGS} `sdl2-config --cflags` \
				`pkg-config --cflags gtk+-3.0`" \
			CXXFLAGS="${CFLAGS} `sdl2-config --cflags` \
				`pkg-config --cflags gtk+-3.0`"
FAKE_FLAGS =		PREFIX="${WRKINST}/${TRUEPREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
