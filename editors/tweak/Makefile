# $OpenBSD: Makefile,v 1.1.1.1 2013/05/17 08:24:46 bentley Exp $

COMMENT =		efficient hex editor

DISTNAME =		tweak-3.01

CATEGORIES =		editors

HOMEPAGE =		http://www.chiark.greenend.org.uk/~sgtatham/tweak/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncurses

MASTER_SITES =		http://www.chiark.greenend.org.uk/~sgtatham/tweak/

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS} -c -Dunix"
FAKE_FLAGS =		PREFIX=${WRKINST}/${TRUEPREFIX}

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
