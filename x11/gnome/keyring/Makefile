# $OpenBSD: Makefile,v 1.17 2007/07/05 22:50:10 jasper Exp $

COMMENT=		password agent for the GNOME project

GNOME_PROJECT=		gnome-keyring
GNOME_VERSION=		0.8.1
SHARED_LIBS +=	gnome-keyring  1.0            # .0.1

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c cairo expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png pthread z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		gdk-x11-2.0.>=1000.0,gdk_pixbuf-2.0.>=1000.0,gtk-x11-2.0.>=1000.0::x11/gtk+2 \
			dbus-1.>=6::x11/dbus

USE_X11=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
