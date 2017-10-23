# $OpenBSD: Makefile,v 1.24 2017/10/23 17:10:50 sthen Exp $

COMMENT=	Mahjongg game for X11

DISTNAME=       xmj
PKGNAME=	xmj-1.0
REVISION =	3
CATEGORIES=	games

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c xcb

CONFIGURE_STYLE=imake noman
NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,_height=,_height ,g;' \
		-e 's,_width=,_width ,g' $i \
		${WRKSRC}/tiles/c*

.include <bsd.port.mk>
