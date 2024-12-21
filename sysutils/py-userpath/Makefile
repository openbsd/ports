COMMENT=	cross-platform tool to add locations to the user's PATH

MODPY_DISTV =	1.9.2
DISTNAME=	userpath-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	https://github.com/ofek/userpath

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

# tests aren't working properly with OpenBSD
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-click \
		sysutils/py-psutil

.include <bsd.port.mk>
