COMMENT =	fuzzy text selector for the terminal

V =		1.0
DISTNAME =	fzy-$V
REVISION =	1

CATEGORIES =	textproc

HOMEPAGE =	https://github.com/jhawthorn/fzy

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MASTER_SITES =	https://github.com/jhawthorn/fzy/releases/download/$V/

MAKE_ENV =	CC=${CC} BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

.include <bsd.port.mk>
