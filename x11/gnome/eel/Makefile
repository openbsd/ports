# $OpenBSD: Makefile,v 1.24 2007/05/30 09:56:30 jasper Exp $

COMMENT=		"Eazel Extensions Library"

DISTNAME=		eel-2.18.0.1
SHARED_LIBS=		eel-2		20.0
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel x11/gnome

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/eel/2.18/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 cairo \
		crypto dbus-1 dbus-glib-1 esd expat fam fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 jpeg \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 png popt rpcsvc \
		ssl stdc++ util xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gailutil.>=17::x11/gnome/gail \
			gnome-desktop-2.>=4::x11/gnome/desktop \
			gnome-menu::x11/gnome/menus \
			startup-notification-1::devel/startup-notification

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point
# to the appropriate .Xauthority file.
REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS+= 	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>
