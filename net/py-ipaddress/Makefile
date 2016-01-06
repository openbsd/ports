# $OpenBSD: Makefile,v 1.3 2016/01/06 10:56:36 sthen Exp $

COMMENT =		Python 3.3's ipaddress for Python 2.6 and 2.7#'

MODPY_EGG_VERSION =	1.0.16
DISTNAME =		ipaddress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

HOMEPAGE =		https://github.com/phihag/ipaddress

# Python
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-nose

do-test:
	cd ${WRKSRC}; nosetests

.include <bsd.port.mk>
