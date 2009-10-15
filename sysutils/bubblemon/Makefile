# $OpenBSD: Makefile,v 1.35 2009/10/15 11:50:28 ajacoutot Exp $

COMMENT=		GNOME panel applet that displays CPU and memory load

DISTNAME=		bubblemon-2.0.15
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

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo dbus-1
WANTLIB += expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnomecanvas-2 gnome-keyring gnomeui-2 gnomevfs-2 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png popt pthread pthread-stubs
WANTLIB += xcb xml2 z

LIB_DEPENDS=		panel-applet-2::x11/gnome/panel \
			gtop-2.0.>=3.0::devel/libgtop2

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include \
			`pkg-config --cflags libgnomeui-2.0`"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib \
			`pkg-config --libs libgnomeui-2.0`"

FAKE_FLAGS=		itlocaledir=${PREFIX}/share/locale

.include <bsd.port.mk>
