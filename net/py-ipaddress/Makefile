# $OpenBSD: Makefile,v 1.7 2017/01/12 22:29:44 sthen Exp $

# python3 flavour not needed for this port; the ipaddress module
# is available in core python 3.3+
COMMENT =		Python 3.3's ipaddress for Python 2.6 and 2.7#'

MODPY_EGG_VERSION =	1.0.17
DISTNAME =		ipaddress-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		1

HOMEPAGE =		https://github.com/phihag/ipaddress

# Python
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-nose${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC}; nosetests${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
