COMMENT=	falling blocks puzzle game

DISTNAME=	angrydd-1.0.2
CATEGORIES=	games
REVISION=	1

# GPLv2
PERMIT_PACKAGE=	Yes

# old upstream (http://www.sacredchao.net/~piman/angrydd/) is no more;
# this distfile is forked from the old one with patches added from
# https://salsa.debian.org/games-team/angrydd/-/raw/master/debian/patches/python3.patch
SITES=		https://dickman.org/openbsd/distfiles/

BUILD_DEPENDS=	devel/pygame${MODPY_FLAVOR}
RUN_DEPENDS=	devel/pygame${MODPY_FLAVOR} \
		math/py-numpy${MODPY_FLAVOR}

MODULES=	lang/python
CONFIGURE_STYLE=none
MODPY_ADJ_FILES=angrydd.py check.py

NO_TEST=	Yes

MAKE_FLAGS=	TO=share/angrydd PREFIX=${TRUEPREFIX}

.include <bsd.port.mk>
