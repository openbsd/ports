# $OpenBSD: Makefile,v 1.17 2006/01/09 11:32:23 alek Exp $

COMMENT=		"Eazel Extensions Library"

DISTNAME=		eel-2.10.1
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		eel-2 12.1
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/eel/2.10/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 SM X11 Xext Xrender \
		art_lgpl_2 atk-1.0.0.0 bonobo-2 bonobo-activation bonoboui-2 \
		fontconfig freetype gconf-2 gdk-x11-2.0.0.0 \
		gdk_pixbuf-2.0.0.0 glade-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gnome-2 gnomecanvas-2 gnomevfs-2 \
		gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 m \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.1000.0 \
		popt xml2 z cairo glitz png \
		crypto audiofile jpeg esd ssl gnome-keyring \
		ORBitCosNaming-2

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gnomeui-2.0::x11/gnome/libgnomeui \
			gailutil.17::x11/gnome/gail \
			gnome-desktop-2.4::x11/gnome/desktop \
			gnome-menu::x11/gnome/menus \
			startup-notification-1.0::devel/startup-notification

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
