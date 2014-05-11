# $OpenBSD: Makefile,v 1.1.1.1 2014/05/11 21:40:13 rpe Exp $

COMMENT =		Python module providing a password hashing framework

MODPY_EGG_VERSION =	1.6.2
DISTNAME =		passlib-${MODPY_EGG_VERSION}
PKGNAME =		py-passlib-${MODPY_EGG_VERSION}

CATEGORIES =   		security

HOMEPAGE =		https://code.google.com/p/passlib/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://passlib.googlecode.com/files/

MODULES =		lang/python
MODPY_SETUPTOOLS = 	Yes

TEST_DEPENDS =		devel/py-nose \
			devel/py-mock

do-test:
	cd ${WRKSRC} && \
		PASSLIB_TEST_MODE="full" nosetests --tests passlib/tests

.include <bsd.port.mk>
