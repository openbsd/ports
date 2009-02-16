# $OpenBSD: Makefile,v 1.30 2009/02/16 15:28:58 sthen Exp $

COMMENT=		GNOME panel applet that displays the CPU + memory load

DISTNAME=		bubblemon-2.0.1
PKGNAME=		${DISTNAME}p7
CATEGORIES=		sysutils x11/gnome

HOMEPAGE=		http://www.d.kth.se/~d92-jwa/code/

MASTER_SITES=		${MASTER_SITE_SAVANNAH:=bubblemon/}

LIB_DEPENDS=		panel-applet-2::x11/gnome/panel \
			gtop-2.0.>=3.0::devel/libgtop2

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

USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
