# $OpenBSD: Makefile,v 1.17 2010/08/01 07:54:45 ajacoutot Exp $

COMMENT=	GNOME Devtool Libraries

GNOME_PROJECT=	gdl
GNOME_VERSION=	2.30.0

REVISION=	2

SHARED_LIBS +=  gdl-1                1.0      # .3.0

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 xml2
WANTLIB += png pthread-stubs xcb xcb-render xcb-render-util z gthread-2.0
WANTLIB += gdk_pixbuf-2.0 gdk-x11-2.0 gtk-x11-2.0

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	::textproc/libxml \
		::x11/gtk+2

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
