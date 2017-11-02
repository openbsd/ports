# $OpenBSD: Makefile,v 1.16 2017/11/02 11:55:10 espie Exp $

COMMENT =	music collection manager and player
DISTNAME =	gogglesmm-0.12.7
EXTRACT_SUFX =	.tar.xz
REVISION =	10
CATEGORIES =	audio x11

HOMEPAGE =	https://gogglesmm.github.io/

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += FOX-1.6 GL GLU X11 c dbus-1 expat intl m sqlite3 ${COMPILER_LIBCXX}
WANTLIB += tag xine

MASTER_SITES =	http://www.linklevel.net/distfiles/

LIB_DEPENDS =	audio/taglib \
		databases/sqlite3 \
		devel/fox \
		multimedia/xine-lib \
		x11/dbus

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	--prefix=${PREFIX} \
			--with-md5=internal
CONFIGURE_ENV =		LINK="${CXX}" LIBS=-lintl
CONFIGURE_STYLE =	simple
USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
