# $OpenBSD: Makefile,v 1.1.1.1 2017/03/17 07:39:58 sthen Exp $

COMMENT =		VCR imitation for python-requests

MODPY_EGG_VERSION =	0.8.0
DISTNAME =		betamax-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www devel

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		www/py-requests${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			devel/py-mock${MODPY_FLAVOR}

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest

.include <bsd.port.mk>
