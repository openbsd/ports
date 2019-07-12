# $OpenBSD: Makefile,v 1.25 2019/07/12 20:46:27 sthen Exp $

COMMENT=	Mahjongg game for X11

DISTNAME=       xmj
PKGNAME=	xmj-1.0
REVISION =	3
CATEGORIES=	games

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c xcb

CONFIGURE_STYLE=imake noman
NO_TEST=	Yes

pre-configure:
	@perl -pi -e 's,_height=,_height ,g;' \
		-e 's,_width=,_width ,g' $i \
		${WRKSRC}/tiles/c*

.include <bsd.port.mk>
