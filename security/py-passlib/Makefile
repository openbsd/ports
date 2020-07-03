# $OpenBSD: Makefile,v 1.16 2020/07/03 21:13:07 sthen Exp $

COMMENT=	Python module providing a password hashing framework

MODPY_EGG_VERSION= 1.7.2
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

RUN_DEPENDS=	security/py-bcrypt${MODPY_FLAVOR} \
		security/py-scrypt${MODPY_FLAVOR}
TEST_DEPENDS=	${RUN_DEPENDS} \
		devel/py-mock${MODPY_FLAVOR} \
		www/apache-httpd

pre-test:
	ln -fs ${LOCALBASE}/bin/htpasswd2 ${WRKDIR}/bin/htpasswd

.include <bsd.port.mk>
