# $OpenBSD: Makefile,v 1.26 2016/03/27 20:53:15 naddy Exp $

COMMENT =		GTK+2 file manager

DISTNAME =		emelfm2-0.9.1
REVISION =		0

CATEGORIES =		x11
HOMEPAGE =		http://emelfm2.net/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cairo gdk-3 gtk-3 glib-2.0 gmodule-2.0 gdk_pixbuf-2.0
WANTLIB += gobject-2.0 m pango-1.0 pangocairo-1.0 pthread

MASTER_SITES =	${HOMEPAGE}rel/
EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	x11/gtk+3

MODULES =	devel/gettext

BUILD_DEPENDS =	devel/libmagic
RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils

MAKE_ENV =	MAN_DIR=${DESTDIR}/$(PREFIX)/man/man1 CC=${CC} lCFLAGS="${CFLAGS} -I${LOCALBASE}/include"
USE_GMAKE =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
