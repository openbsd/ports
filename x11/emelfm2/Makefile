# $OpenBSD: Makefile,v 1.23 2014/03/23 18:17:35 kili Exp $

COMMENT =		GTK+2 file manager

DISTNAME =		emelfm2-0.7.3
REVISION=		4

CATEGORIES =		x11
HOMEPAGE =		http://emelfm2.net/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c cairo gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pthread pthread-stubs

MASTER_SITES =	${HOMEPAGE}rel/
EXTRACT_SUFX =	.tar.bz2

LIB_DEPENDS =	x11/gtk+2

MODULES =	devel/gettext

BUILD_DEPENDS =	devel/libmagic
RUN_DEPENDS =	devel/desktop-file-utils \
		devel/xdg-utils

MAKE_ENV =	CC=${CC} lCFLAGS="${CFLAGS} -I${LOCALBASE}/include"
USE_GMAKE =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
