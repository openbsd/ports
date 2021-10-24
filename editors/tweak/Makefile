# $OpenBSD: Makefile,v 1.10 2021/10/24 21:28:42 bentley Exp $

COMMENT =	efficient hex editor

DISTNAME =	tweak-3.02
REVISION =	5

CATEGORIES =	editors

HOMEPAGE =	https://www.chiark.greenend.org.uk/~sgtatham/tweak/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# BSD
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c curses

MASTER_SITES =	https://www.chiark.greenend.org.uk/~sgtatham/tweak/

MAKE_FLAGS =	CC="${CC}" LINK="${CC}" CFLAGS="${CFLAGS} -c -Dunix"

FAKE_FLAGS =	PREFIX=${WRKINST}/${TRUEPREFIX}

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
