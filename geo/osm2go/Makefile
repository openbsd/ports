# $OpenBSD: Makefile,v 1.2 2009/09/04 21:38:41 landry Exp $

COMMENT =	Openstreetmap editor for handheld devices

VERSION =	0.7.18
DISTNAME =	osm2go_${VERSION}-maemo1
PKGNAME =	osm2go-${VERSION}p0

WRKDIST =	${WRKDIR}/osm2go-${VERSION}
CATEGORIES =	geo x11

HOMEPAGE =	http://wiki.openstreetmap.org/wiki/Osm2go
MAINTAINER =	Landry Breuil <gaston@gcu.info>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://repository.maemo.org/extras-devel/pool/diablo/free/source/o/osm2go/

CONFIGURE_STYLE =	gnu

MODULES =	devel/gettext \
		devel/gconf2

LIB_DEPENDS =	gnome-2::x11/gnome/libgnome \
		soup-2.4::devel/libsoup \
		curl::net/curl \
		goocanvas::graphics/goocanvas

RUN_DEPENDS =	::devel/desktop-file-utils

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 bonobo-2
WANTLIB += bonobo-activation c cairo dbus-1 expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0
WANTLIB += gnutls gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png popt pthread pthread-stubs
WANTLIB += xcb xml2 z gnomevfs-2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/data/osm2go-ubuntu.desktop

.include <bsd.port.mk>
