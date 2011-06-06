# $OpenBSD: Makefile,v 1.41 2011/06/06 15:10:40 jasper Exp $

COMMENT=		GNOME panel applet that displays CPU and memory load

DISTNAME=		bubblemon-2.0.15
REVISION=		1
CATEGORIES=		sysutils x11/gnome

HOMEPAGE=		http://www.nongnu.org/bubblemon/

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=bubblemon/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			textproc/intltool

WANTLIB += GL ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation bonoboui-2
WANTLIB += c cairo canberra drm expat fontconfig freetype gailutil
WANTLIB += gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 gtop-2.0 m panel-applet-2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += popt pthread pthread-stubs xcb xcb-render xcb-shm xml2
WANTLIB += z

LIB_DEPENDS=		x11/gnome/panel \
			devel/libgtop2

USE_GMAKE=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include \
			`pkg-config --cflags libgnomeui-2.0`"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib \
			`pkg-config --libs libgnomeui-2.0`"

FAKE_FLAGS=		itlocaledir=${PREFIX}/share/locale

.include <bsd.port.mk>
