# $OpenBSD: Makefile,v 1.10 2007/05/19 09:13:54 jasper Exp $

COMMENT=		"lightweight HTML rendering/printing/editing engine"

VERSION=		3.14.1
API_VERSION=		3.14
DISTNAME=		gtkhtml-${VERSION}
PKGNAME=		gtkhtml3-${VERSION}p0
SHARED_LIBS +=	gtkhtml-3.14         0.0         # .19.0
CATEGORIES=    		www

HOMEPAGE=		http://www.gnome.org/

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 cairo \
		crypto esd expat fontconfig freetype gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png popt ssl util xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtkhtml/3.14/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:gnome-icon-theme-*:x11/gnome/icon-theme
LIB_DEPENDS=		dbus-1::x11/dbus \
			dbus-glib-1::x11/dbus-glib \
			gailutil::x11/gnome/gail \
			gnomeui-2::x11/gnome/libgnomeui

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		API_VERSION

NO_REGRESS=		Yes

.include <bsd.port.mk>
