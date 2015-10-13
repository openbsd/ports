# $OpenBSD: Makefile,v 1.12 2015/10/13 11:01:09 jasper Exp $

V =		3.3.0
COMMENT =	GTK and VTE based terminal emulator
DISTNAME =	sakura-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	x11
REVISION =	1

HOMEPAGE =	http://www.pleyades.net/david/projects/sakura/

# GPLv2 only
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnutls gobject-2.0 gtk-3 m pango-1.0
WANTLIB += pangocairo-1.0 pthread vte-2.91 z

MASTER_SITES =	https://launchpad.net/sakura/trunk/${V}/+download/

MODULES =	devel/cmake \
		devel/gettext

LIB_DEPENDS =	devel/vte3

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

pre-configure:
	sed -i 's,-O2,,g' ${WRKSRC}/CMakeLists.txt
	sed -i 's,share/man,man,g' ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
