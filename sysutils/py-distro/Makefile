# $OpenBSD: Makefile,v 1.3 2020/07/03 21:13:11 sthen Exp $

COMMENT=	provide information about the OS platform

MODPY_EGG_VERSION=	1.4.0
DISTNAME=	distro-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
REVISION=	1

CATEGORIES=	sysutils

# Apache 2.0
PERMIT_PACKAGE=	Yes

FLAVORS=		python3
FLAVOR=			python3

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

TEST_DEPENDS=		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
