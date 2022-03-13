COMMENT =	a terminal frontend for fossil

V =		0.9
DISTNAME =	fnc-${V}
CATEGORIES =	devel

HOMEPAGE =	https://fnc.bsdbox.org

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# ISC (fnc), BSD 2-clause (libfossil)
PERMIT_PACKAGE =	Yes

WANTLIB +=	c curses m panel pthread util z

MASTER_SITES =	https://fnc.bsdbox.org/tarball/${V}/

MAKE_ENV =	MANDIR=/man

.include <bsd.port.mk>
