#$OpenBSD: Makefile,v 1.26 2009/06/07 05:32:02 ajacoutot Exp $

COMMENT=	Image viewer and browser for GNOME

GNOME_PROJECT=	gthumb
GNOME_VERSION=	2.10.11
PKGNAME=	${DISTNAME}p2

SHARED_LIBS=	gthumb	0.0	# .0.0

CATEGORIES=	graphics

HOMEPAGE=	http://gthumb.sourceforge.net/

MAINTAINER=	Guillaume Protet <guillaume.protet@mortheres.info>	

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender Xtst Xxf86vm art_lgpl_2 atk-1.0 \
		bonobo-2 bonobo-activation bonoboui-2 c cairo crypto \
		dbus-1 dbus-glib-1 exif expat fontconfig freetype \
		gailutil gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 jpeg ltdl m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png popt pthread ssl tiff \
		usb util xml2 z gio-2.0

MODULES=	x11/gnome \
		devel/gettext \
		devel/gconf2

LIB_DEPENDS=	gnomeui-2.>=2000::x11/gnome/libgnomeui \
		gphoto2.>=3,gphoto2_port.>=6::graphics/libgphoto2
RUN_DEPENDS=	::misc/shared-mime-info

MODGNOME_HELP_FILES= Yes
DESKTOP_FILES=	Yes
USE_X11=	Yes
MODGCONF2_SCHEMAS_DIR= gthumb

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-scrollkeeper \
		--disable-iptcdata \
		--disable-libopenraw

.include <bsd.port.mk>
