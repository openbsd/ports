# $OpenBSD: Makefile,v 1.7 2014/08/22 02:03:20 bcallah Exp $

V =		3.1.5
COMMENT =	GTK and VTE based terminal emulator
DISTNAME =	sakura-${V}
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	x11

HOMEPAGE =	http://www.pleyades.net/david/projects/sakura/

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += X11 Xext atk-1.0 c cairo cairo-gobject fontconfig freetype
WANTLIB += gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pthread vte2_90
WANTLIB += z

MASTER_SITES =	https://launchpad.net/sakura/trunk/${V}/+download/

MODULES =	devel/cmake \
		devel/gettext

LIB_DEPENDS =	devel/vte3

RUN_DEPENDS =	devel/desktop-file-utils

NO_TEST =	Yes

.include <bsd.port.mk>
