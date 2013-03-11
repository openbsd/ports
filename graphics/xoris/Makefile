# $OpenBSD: Makefile,v 1.5 2013/03/11 11:10:56 espie Exp $

COMMENT =	X11 pixel color grabber

DISTNAME =	xoris-0.1e
CATEGORIES =	graphics

HOMEPAGE =	http://xoris.sf.net/

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=xoris/}

# MIT/X license
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	X11 c

CONFIGURE_STYLE = imake

MAKE_FLAGS +=	CFLAGS="${CFLAGS}" CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

NO_TEST =	Yes

.include <bsd.port.mk>
