# $OpenBSD: Makefile,v 1.1.1.1 2019/09/11 21:03:51 sthen Exp $

COMMENT=	provide information about the OS platform

MODPY_EGG_VERSION=	1.4.0
DISTNAME=	distro-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST=		Yes

TEST_DEPENDS=		devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
