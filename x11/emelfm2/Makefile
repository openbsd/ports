# $OpenBSD: Makefile,v 1.31 2019/07/12 20:51:10 sthen Exp $

COMMENT =		GTK+2 file manager

DISTNAME =		emelfm2-0.9.1
REVISION =		2

CATEGORIES =		x11
HOMEPAGE =		http://emelfm2.net/

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =  c cairo gdk-3 gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gtk-3 iconv intl m pango-1.0 pangocairo-1.0 pthread

MASTER_SITES =	${HOMEPAGE}rel/
EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	x11/gtk+3

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/libmagic
RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils

MAKE_ENV =	MAN_DIR=${DESTDIR}/$(PREFIX)/man/man1 CC=${CC} lCFLAGS="${CFLAGS} -I${LOCALBASE}/include"
USE_GMAKE =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
