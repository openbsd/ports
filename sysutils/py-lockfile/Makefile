# $OpenBSD: Makefile,v 1.20 2020/11/01 13:28:14 jasper Exp $

COMMENT=		platform-independent file locking for Python

MODPY_EGG_VERSION=	0.12.2
DISTNAME=		lockfile-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		5

CATEGORIES=		sysutils

HOMEPAGE=		https://launchpad.net/pylockfile

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

BUILD_DEPENDS=		devel/py-pbr${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-pbr${MODPY_FLAVOR}

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

FLAVORS=		python3
FLAVOR ?=		python3

TEST_DEPENDS=		textproc/py-sphinx${MODPY_FLAVOR}

pre-test:
	sed -i "s,^sphinx.*,sphinx," ${WRKSRC}/test-requirements.txt

.include <bsd.port.mk>
