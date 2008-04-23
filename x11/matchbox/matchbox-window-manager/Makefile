# $OpenBSD: Makefile,v 1.9 2008/04/23 22:18:27 jasper Exp $

COMMENT=	window manager with a classic pda management policy
DISTNAME=	matchbox-window-manager-1.0
PKGNAME=	${DISTNAME}p1

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-window-manager/1.0/}

LIB_DEPENDS=	mb.>=1::x11/matchbox/libmatchbox
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common \
		:desktop-file-utils-*:devel/desktop-file-utils
MODULES=	devel/gettext
WANTLIB=	ICE SM X11 Xext Xft Xrender c fontconfig freetype m z \
		glib-2.0.>=600.0 gmodule-2.0.>=600.0 gobject-2.0.>=600.0 jpeg \
		pango-1.0 pangoft2-1.0 pangoxft-1.0 png Xau Xdmcp expat

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-session
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng -I${X11BASE}/include " \
		LDFLAGS="-L${LOCALBASE}/lib"
CFLAGS+=-I${LOCALBASE}/include/libpng -I${X11BASE}/include

.include <bsd.port.mk>
