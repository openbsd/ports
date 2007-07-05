# $OpenBSD: Makefile,v 1.23 2007/07/05 22:50:10 jasper Exp $

COMMENT=		graphics library for GNOME

GNOME_PROJECT=		libgnomecanvas
GNOME_VERSION=		2.14.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	gnomecanvas-2      1400.0     # .1400.0
CATEGORIES=		x11

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		atk-1.0 cairo expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 png xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		glade-2.0.>=0::devel/libglade2 \
			art_lgpl_2.>=5::graphics/libart

USE_X11=		Yes

CONFIGURE_ARGS= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

.include <bsd.port.mk>
