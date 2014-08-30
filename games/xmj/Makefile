# $OpenBSD: Makefile,v 1.23 2014/08/30 21:54:08 jasper Exp $

COMMENT=	Mahjongg game for X11

DISTNAME=       xmj
PKGNAME=	xmj-1.0
REVISION =	2
CATEGORIES=	games

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c pthread-stubs xcb

CONFIGURE_STYLE=imake noman
NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,_height=,_height ,g;' \
		-e 's,_width=,_width ,g' $i \
		${WRKSRC}/tiles/c*

.include <bsd.port.mk>
