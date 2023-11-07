COMMENT =	X11 pixel color grabber

DISTNAME =	xoris-0.1e
REVISION =	0
CATEGORIES =	graphics

HOMEPAGE =	https://xoris.sourceforge.net/

SITES =		${SITE_SOURCEFORGE:=xoris/}

# MIT/X license
PERMIT_PACKAGE =	Yes

WANTLIB =	X11 c

CONFIGURE_STYLE = imake

MAKE_FLAGS +=	CFLAGS="${CFLAGS}" CPPFLAGS="-I${X11BASE}/include" \
		LDFLAGS="-L${X11BASE}/lib"

NO_TEST =	Yes

.include <bsd.port.mk>
