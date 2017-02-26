# $OpenBSD: Makefile,v 1.4 2017/02/26 21:52:07 fcambus Exp $

COMMENT =	efficient hex editor

DISTNAME =	tweak-3.02
REVISION =	0

CATEGORIES =	editors

HOMEPAGE =	http://www.chiark.greenend.org.uk/~sgtatham/tweak/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c ncurses

MASTER_SITES =	http://www.chiark.greenend.org.uk/~sgtatham/tweak/

MAKE_FLAGS =	CC="${CC}" LINK="${CC}" CFLAGS="${CFLAGS} -c -Dunix"

FAKE_FLAGS =	PREFIX=${WRKINST}/${TRUEPREFIX}

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
