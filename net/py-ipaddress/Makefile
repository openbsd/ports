# $OpenBSD: Makefile,v 1.5 2016/11/02 20:52:17 danj Exp $

COMMENT =		Python 3.3's ipaddress for Python 2.6 and 2.7#'

MODPY_EGG_VERSION =	1.0.17
DISTNAME =		ipaddress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

HOMEPAGE =		https://github.com/phihag/ipaddress

# Python
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC}; nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
