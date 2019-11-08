# $OpenBSD: Makefile,v 1.13 2019/11/08 09:30:23 kmos Exp $

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

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes
MODPY_PYTEST_ARGS=	passlib

FLAVORS=	python3
FLAVOR?=

RUN_DEPENDS=	security/py-bcrypt${MODPY_FLAVOR}
TEST_DEPENDS=	devel/py-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
