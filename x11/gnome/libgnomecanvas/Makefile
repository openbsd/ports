# $OpenBSD: Makefile,v 1.21 2007/05/30 09:56:30 jasper Exp $

COMMENT=		"graphics library for GNOME"

DISTNAME=		libgnomecanvas-2.14.0
PKgNAME=		${DISTNAME}p0
SHARED_LIBS +=	gnomecanvas-2      1400.0     # .1400.0
CATEGORIES=		x11 x11/gnome

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		atk-1.0 cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 png xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnomecanvas/2.14/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext
LIB_DEPENDS=		glade-2.0.>=0::devel/libglade2 \
			art_lgpl_2.>=5::graphics/libart

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
