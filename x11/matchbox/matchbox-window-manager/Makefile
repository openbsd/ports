# $OpenBSD: Makefile,v 1.11 2009/03/23 18:39:48 ajacoutot Exp $

COMMENT=	window manager suitable for low-resolution screens
DISTNAME=	matchbox-window-manager-1.2
PKGNAME=	${DISTNAME}p0

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-window-manager/1.2/}

WANTLIB=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xrender \
		c expat fontconfig freetype glib-2.0 gmodule-2.0 gobject-2.0 \
		jpeg m pango-1.0 pangoft2-1.0 pangoxft-1.0 png z

MODULES=	devel/gettext
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common
LIB_DEPENDS=	startup-notification-1::devel/startup-notification \
		mb::x11/matchbox/libmatchbox

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-expat \
			--enable-session \
			--enable-startup-notification
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include " \
			LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS+=		-I${LOCALBASE}/include/libpng -I${X11BASE}/include

.include <bsd.port.mk>
