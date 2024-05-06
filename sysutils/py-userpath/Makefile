COMMENT=	cross-platform tool to add locations to the user's PATH

MODPY_EGG_VERSION=	1.9.1
DISTNAME=	userpath-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	https://github.com/ofek/userpath

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

FLAVORS=	python3
FLAVOR=		python3

# tests aren't working properly with OpenBSD
NO_TEST=	Yes

RUN_DEPENDS=	devel/py-click${MODPY_FLAVOR} \
		sysutils/py-psutil${MODPY_FLAVOR}

.include <bsd.port.mk>
