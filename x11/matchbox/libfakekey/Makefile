# $OpenBSD: Makefile,v 1.6 2008/04/23 22:18:27 jasper Exp $

COMMENT=	library for converting characters to X key-presses
DISTNAME=	libfakekey-0.1
PKGNAME=	${DISTNAME}p2
SHARED_LIBS=	fakekey 0.1

MASTER_SITES=	${MASTER_SITES_MATCHBOX:=libfakekey/0.1/}

USE_LIBTOOL=	Yes

WANTLIB=	X11 Xtst Xau Xdmcp Xext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

.include <bsd.port.mk>
