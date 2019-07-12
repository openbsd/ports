# $OpenBSD: Makefile,v 1.7 2019/07/12 20:46:06 sthen Exp $

COMMENT =	efficient hex editor

DISTNAME =	tweak-3.02
REVISION =	2

CATEGORIES =	editors

HOMEPAGE =	https://www.chiark.greenend.org.uk/~sgtatham/tweak/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c curses

MASTER_SITES =	https://www.chiark.greenend.org.uk/~sgtatham/tweak/

MAKE_FLAGS =	CC="${CC}" LINK="${CC}" CFLAGS="${CFLAGS} -c -Dunix"

FAKE_FLAGS =	PREFIX=${WRKINST}/${TRUEPREFIX}

USE_GMAKE =	Yes

NO_TEST =	Yes

.include <bsd.port.mk>
