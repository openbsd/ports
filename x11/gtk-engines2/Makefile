# $OpenBSD: Makefile,v 1.29 2008/11/22 11:51:37 jasper Exp $

SHARED_ONLY=		Yes

COMMENT=		collection of theme engines for GTK+2

V=			2.16.1
GNOME_PROJECT=		gtk-engines
GNOME_VERSION=		${V}
PKGNAME=		gtk-engines2-${V}
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png z pcre

LIB_DEPENDS=	       gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
RUN_DEPENDS=	       :hicolor-icon-theme-*:x11/hicolor-icon-theme

MODULES=		devel/gettext \
			x11/gnome

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS= 	--disable-lua
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	       Yes

.include <bsd.port.mk>
