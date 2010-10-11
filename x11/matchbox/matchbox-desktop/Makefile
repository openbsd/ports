# $OpenBSD: Makefile,v 1.14 2010/10/11 08:19:58 jasper Exp $

COMMENT=	pda style application launcher or item browser
DISTNAME=	matchbox-desktop-2.0
REVISION=	3

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-desktop/2.0/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += z pthread-stubs xcb startup-notification-1 gdk_pixbuf-2.0
WANTLIB += gdk-x11-2.0 gtk-x11-2.0

MODULES=	devel/gettext

LIB_DEPENDS=	::devel/startup-notification \
		::x11/gtk+2
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	-enable-startup-notification
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
