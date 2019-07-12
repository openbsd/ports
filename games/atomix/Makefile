# $OpenBSD: Makefile,v 1.23 2019/07/12 20:46:14 sthen Exp $

COMMENT=	build molecules out of single atoms

DISTNAME=	atomix-2.14.0
REVISION=	14
CATEGORIES=	games
EXTRACT_SUFX=	.tar.bz2

MASTER_SITES=	${MASTER_SITE_GNOME:=/sources/atomix/2.14/}

HOMEPAGE =	https://wiki.gnome.org/Apps/Atomix

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB =  GL ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 bonobo-2
WANTLIB += bonobo-activation bonoboui-2 c cairo expat fontconfig
WANTLIB += freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-2 gnomecanvas-2 gnomeui-2 gnomevfs-2
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv intl m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png popt pthread xcb
WANTLIB += xcb-render xcb-shm xml2 z

MODULES=	textproc/intltool

LIB_DEPENDS=	x11/gnome/libgnome \
		x11/gnome/libgnomeui
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

post-install:
	${INSTALL_DATA} ${WRKINST}/var/games/atomix.scores \
		${PREFIX}/share/atomix/atomix.scores 

.include <bsd.port.mk>
