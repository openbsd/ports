# $OpenBSD: Makefile,v 1.18 2015/12/08 00:26:28 bentley Exp $

COMMENT=	build molecules out of single atoms

DISTNAME=	atomix-2.14.0
REVISION=	10
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	${MASTER_SITE_GNOME:=/sources/atomix/2.14/}

HOMEPAGE =	https://wiki.gnome.org/Apps/Atomix

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo expat
WANTLIB += fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnomecanvas-2
WANTLIB += gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += popt pthread pthread-stubs xcb xcb-render xcb-shm xml2
WANTLIB += z

MODULES=	textproc/intltool \
		devel/gettext

LIB_DEPENDS=	x11/gnome/libgnome \
		x11/gnome/libgnomeui
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA} ${WRKINST}/var/games/atomix.scores \
		${PREFIX}/share/atomix/atomix.scores 

.include <bsd.port.mk>
