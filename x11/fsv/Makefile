# $OpenBSD: Makefile,v 1.13 2010/03/25 06:29:12 jasper Exp $

COMMENT=	3D filesystem visualizer

V=		1.0.1
DISTNAME=	fsv2-$V
PKGNAME=	fsv-$V
CATEGORIES=     x11

HOMEPAGE=	http://fedorchenko.net/fsv2.php

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://fedorchenko.net/src/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext

WANTLIB += GL GLU ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 c cairo
WANTLIB += dbus-1 expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png popt pthread pthread-stubs
WANTLIB += xcb xml2 z

LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui \
		gtkgl-2.0::x11/gtkglarea

USE_X11=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
