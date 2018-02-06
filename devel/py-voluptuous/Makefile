# $OpenBSD: Makefile,v 1.4 2018/02/06 19:51:50 jung Exp $

COMMENT =		data validation library

MODPY_EGG_VERSION =	0.10.5
DISTNAME =		voluptuous-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
