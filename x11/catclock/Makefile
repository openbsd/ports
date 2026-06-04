COMMENT =	Kit-cat xclock

GH_ACCOUNT =	BarkyTheDog
GH_PROJECT =	catclock
GH_COMMIT =	20481a14cd824d215d4d8869472ed97660135d1d
DISTNAME =	${GH_PROJECT}-0.20260523
CATEGORIES =	x11 graphics

# BSD
PERMIT_PACKAGE=	Yes

LIB_DEPENDS =	x11/motif
WANTLIB +=	X11 Xext Xm Xt c m

post-install:
	mv ${PREFIX}/bin/xclock ${PREFIX}/bin/catclock
	${INSTALL_MAN} ${WRKSRC}/xclock.man ${PREFIX}/man/man1/catclock.1

.include <bsd.port.mk>
