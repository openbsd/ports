# $OpenBSD: Makefile,v 1.1.1.1 2015/11/18 20:19:59 sthen Exp $

COMMENT=	useful extra bits for Python

MODPY_EGG_VERSION= 0.0.3
DISTNAME=	extras-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR?=

.if ${FLAVOR} != python3
TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR} \
		devel/py-testtools${MODPY_FLAVOR}
.else
NO_TEST=	Yes
.endif

do-test:
	cd ${WRKSRC}; nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
