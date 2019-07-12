# $OpenBSD: Makefile,v 1.6 2019/07/12 20:47:12 sthen Exp $

COMMENT =	X11 pixel color grabber

DISTNAME =	xoris-0.1e
CATEGORIES =	graphics

HOMEPAGE =	http://xoris.sf.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xoris/}

# MIT/X license
PERMIT_PACKAGE =	Yes

WANTLIB =	X11 c

CONFIGURE_STYLE = imake

MAKE_FLAGS +=	CFLAGS="${CFLAGS}" CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

NO_TEST =	Yes

.include <bsd.port.mk>
