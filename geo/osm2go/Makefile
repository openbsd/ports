# $OpenBSD: Makefile,v 1.21 2017/11/21 00:13:01 naddy Exp $

COMMENT =	Openstreetmap editor for handheld devices

VERSION =	0.8.3
DISTNAME =	osm2go_${VERSION}-maemo1
PKGNAME =	osm2go-${VERSION}
REVISION =	4

WRKDIST =	${WRKDIR}/osm2go-${VERSION}
CATEGORIES =	geo x11

HOMEPAGE =	http://wiki.openstreetmap.org/wiki/Osm2go

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  GL ORBit-2 X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 bonobo-2 bonobo-activation c
WANTLIB += cairo curl expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-2
WANTLIB += gnomevfs-2 gobject-2.0 goocanvas gthread-2.0 gtk-x11-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png popt pthread soup-2.4 xcb xcb-render xcb-shm xml2 z

MASTER_SITES =	http://repository.maemo.org/extras-devel/pool/diablo/free/source/o/osm2go/

CONFIGURE_STYLE =	gnu

MODULES =	devel/gconf2

LIB_DEPENDS =	x11/gnome/libgnome \
		devel/libsoup \
		net/curl \
		graphics/goocanvas

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

NO_TEST =	Yes


pre-configure:
	${SUBST_CMD} ${WRKSRC}/data/osm2go-ubuntu.desktop

.include <bsd.port.mk>
