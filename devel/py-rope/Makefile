# $OpenBSD: Makefile,v 1.5 2018/04/26 20:29:26 danj Exp $

COMMENT=		refactoring library

MODPY_EGG_VERSION=	0.10.7
DISTNAME=		rope-${MODPY_EGG_VERSION}
PKGNAME=                py-${DISTNAME}

CATEGORIES=		devel

HOMEPAGE=		https://github.com/python-rope/rope

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python
MODPY_PI =              Yes
MODPY_SETUPTOOLS=       Yes

FLAVORS=                python3
FLAVOR?=

TEST_DEPENDS=		devel/py-test${MODPY_FLAVOR}
do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest


.include <bsd.port.mk>
