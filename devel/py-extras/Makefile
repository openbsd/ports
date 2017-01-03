# $OpenBSD: Makefile,v 1.4 2017/01/03 19:19:48 landry Exp $

COMMENT=	useful extra bits for Python

MODPY_EGG_VERSION= 0.0.3
DISTNAME=	extras-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel
REVISION=	1

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR?=

TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR} \
		devel/py-testtools${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC}; nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
