# $OpenBSD: Makefile,v 1.8 2008/04/23 22:18:27 jasper Exp $

COMMENT=	pda style application launcher or item browser
DISTNAME=	matchbox-desktop-0.9.1
PKGNAME=	${DISTNAME}p3

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=matchbox-desktop/0.9/}

USE_LIBTOOL=	Yes

LIB_DEPENDS=	mb.>=1::x11/matchbox/libmatchbox
RUN_DEPENDS=	:matchbox-common-*:x11/matchbox/matchbox-common \
		:desktop-file-utils-*:devel/desktop-file-utils
MODULES=	devel/gettext
WANTLIB=	X11 Xext Xft Xrender c fontconfig freetype m z \
		glib-2.0.>=600.0 gmodule-2.0.>=600.0 gobject-2.0.>=600.0 jpeg \
		pango-1.0.>=800.0 pangoft2-1.0.>=800.0 pangoxft-1.0.>=800.0 png \
		Xau Xdmcp expat pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
