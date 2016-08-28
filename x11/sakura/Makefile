# $OpenBSD: Makefile,v 1.17 2016/08/28 10:38:48 naddy Exp $

V =		3.3.4
COMMENT =	GTK and VTE based terminal emulator
DISTNAME =	sakura-${V}
REVISION =	0
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	x11

HOMEPAGE =	http://www.pleyades.net/david/projects/sakura/

# GPLv2 only
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gnutls gobject-2.0 gtk-3 intl m pango-1.0
WANTLIB += pangocairo-1.0 vte-2.91 z

MASTER_SITES =	https://launchpad.net/sakura/trunk/${V}/+download/

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/gettext \
		devel/vte3

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

pre-configure:
	sed -i -e 's,-O2,,g' -e 's,share/man,man,g' \
		${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
