# $OpenBSD: Makefile,v 1.12 2019/06/03 16:06:56 sthen Exp $

COMMENT=	Python module providing a password hashing framework

MODPY_EGG_VERSION= 1.7.1
DISTNAME=	passlib-${MODPY_EGG_VERSION}
PKGNAME=	py-passlib-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	security

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	https://bitbucket.org/ecollins/passlib/wiki/Home

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS=	security/py-bcrypt${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-nose${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && \
	    PASSLIB_TEST_MODE="full" nosetests --tests passlib/tests

.include <bsd.port.mk>
