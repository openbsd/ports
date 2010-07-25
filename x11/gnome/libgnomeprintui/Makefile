# $OpenBSD: Makefile,v 1.34 2010/07/25 08:15:33 ajacoutot Exp $

COMMENT=		user interface components for libgnomeprint

GNOME_PROJECT=		libgnomeprintui
GNOME_VERSION=		2.18.5
REVISION=		1

SHARED_LIBS +=	gnomeprintui-2-2    2.0      # .1.0
CATEGORIES=		devel

# LGPLv2.1/GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 cairo \
		expat fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		xml2 z pthread-stubs xcb gthread-2.0 xcb-render xcb-render-util \
		gnomecanvas-2 gnomeprint-2-2

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/libglade2 \
			:gnome-icon-theme->=1.2.0:x11/gnome/icon-theme
RUN_DEPENDS=		:gnome-icon-theme->=1.2.0:x11/gnome/icon-theme
LIB_DEPENDS=		::x11/gnome/libgnomecanvas \
			::x11/gnome/libgnomeprint

USE_X11=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		VERSION

.include <bsd.port.mk>
