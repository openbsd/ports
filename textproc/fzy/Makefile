COMMENT =	fuzzy text selector for the terminal

V =		1.1
DISTNAME =	fzy-$V

CATEGORIES =	textproc

GH_ACCOUNT =		jhawthorn
GH_PROJECT =		fzy
GH_TAGNAME =		v$V

HOMEPAGE =	https://github.com/jhawthorn/fzy

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MAKE_ENV =	CC=${CC} BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man"

USE_GMAKE =	Yes

.include <bsd.port.mk>
