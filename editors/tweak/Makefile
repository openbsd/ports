# $OpenBSD: Makefile,v 1.9 2021/10/24 10:06:59 fcambus Exp $

COMMENT =	efficient hex editor

DISTNAME =	tweak-3.02
REVISION =	4

CATEGORIES =	editors

HOMEPAGE =	https://www.chiark.greenend.org.uk/~sgtatham/tweak/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c curses

MASTER_SITES =	https://www.chiark.greenend.org.uk/~sgtatham/tweak/

MAKE_FLAGS =	CC="${CC}" LINK="${CC}" CFLAGS="${CFLAGS} -c -Dunix"

FAKE_FLAGS =	PREFIX=${WRKINST}/${TRUEPREFIX}

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
