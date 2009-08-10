# $OpenBSD: Makefile,v 1.3 2009/08/10 06:31:44 kili Exp $

COMMENT=		canvas widget for GTK+ based on Cairo

GNOME_PROJECT=		goocanvas
GNOME_VERSION=		0.14
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=  goocanvas            1.0      # .6.0
CATEGORIES=		graphics

HOMEPAGE=		http://live.gnome.org/GooCanvas

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs xcb z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::x11/gnome/doc-utils
LIB_DEPENDS=		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

.include <bsd.port.mk>
