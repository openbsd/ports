# $OpenBSD: Makefile,v 1.17 2013/09/27 17:49:05 ajacoutot Exp $

COMMENT =	Openstreetmap editor for handheld devices

VERSION =	0.8.3
DISTNAME =	osm2go_${VERSION}-maemo1
PKGNAME =	osm2go-${VERSION}
REVISION =	0

WRKDIST =	${WRKDIR}/osm2go-${VERSION}
CATEGORIES =	geo x11

HOMEPAGE =	http://wiki.openstreetmap.org/wiki/Osm2go

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://repository.maemo.org/extras-devel/pool/diablo/free/source/o/osm2go/

CONFIGURE_STYLE =	gnu

MODULES =	devel/gettext \
		devel/gconf2

LIB_DEPENDS =	x11/gnome/libgnome \
		devel/libsoup \
		net/curl \
		graphics/goocanvas

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

NO_TEST =	Yes

WANTLIB += GL ORBit-2 X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 bonobo-2 bonobo-activation
WANTLIB += c cairo curl expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gnome-2
WANTLIB += gnomevfs-2 gobject-2.0 goocanvas gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += popt pthread pthread-stubs soup-2.4 xcb xcb-render
WANTLIB += xcb-shm xml2 z

pre-configure:
	${SUBST_CMD} ${WRKSRC}/data/osm2go-ubuntu.desktop

.include <bsd.port.mk>
