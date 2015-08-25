# $OpenBSD: Makefile,v 1.11 2015/08/25 13:18:28 sthen Exp $

V =		3.3.0
COMMENT =	GTK and VTE based terminal emulator
DISTNAME =	sakura-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	x11
REVISION =	0

HOMEPAGE =	http://www.pleyades.net/david/projects/sakura/

# GPLv2 only
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gnutls gobject-2.0
WANTLIB += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread
WANTLIB += vte-2.91 z

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
