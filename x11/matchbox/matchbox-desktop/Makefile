# $OpenBSD: Makefile,v 1.9 2008/11/11 22:41:06 jasper Exp $

COMMENT=	pda style application launcher or item browser
DISTNAME=	matchbox-desktop-2.0

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-desktop/2.0/}

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png z

MODULES=	devel/gettext

LIB_DEPENDS=	startup-notification-1::devel/startup-notification \
		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	-enable-startup-notification
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
