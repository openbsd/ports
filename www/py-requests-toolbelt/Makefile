# $OpenBSD: Makefile,v 1.1.1.1 2017/03/17 07:48:46 sthen Exp $

COMMENT =		utility belt for advanced users of python-requests

MODPY_EGG_VERSION =	0.7.1
DISTNAME =		requests-toolbelt-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/sigmavirus24/requests-toolbelt

# APLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR} \
			www/py-betamax${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
