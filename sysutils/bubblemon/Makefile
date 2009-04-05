# $OpenBSD: Makefile,v 1.32 2009/04/05 10:15:33 ajacoutot Exp $

COMMENT=		GNOME panel applet that displays CPU and memory load

DISTNAME=		bubblemon-2.0.12
CATEGORIES=		sysutils x11/gnome

HOMEPAGE=		http://www.nongnu.org/bubblemon/

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=bubblemon/}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage \
		Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		art_lgpl_2 atk-1.0 bonobo-2 dbus-1 gio-2.0 \
		bonobo-activation bonoboui-2 c cairo expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png popt \
		pthread xml2 z

MODULES=		devel/gettext \
			textproc/intltool

LIB_DEPENDS=		panel-applet-2::x11/gnome/panel \
			gtop-2.0.>=3.0::devel/libgtop2

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		itlocaledir=${PREFIX}/share/locale

.include <bsd.port.mk>
