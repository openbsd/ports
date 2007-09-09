# $OpenBSD: Makefile,v 1.26 2007/09/09 20:28:54 jasper Exp $

COMMENT=		window navigator construction kit

GNOME_PROJECT=		libwnck
GNOME_VERSION=		2.18.3
SHARED_LIBS=		wnck-1	20.9	# .20.10
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 XRes Xau Xcursor Xdmcp Xext Xfixes Xi \
			Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
			freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 png z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gdk-x11-2.0.>=1000.0,gdk_pixbuf-2.0.>=1000.0,gtk-x11-2.0.>=1000.0::x11/gtk+2 \
			startup-notification-1::devel/startup-notification

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
