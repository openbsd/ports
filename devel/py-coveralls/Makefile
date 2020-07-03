# $OpenBSD: Makefile,v 1.15 2020/07/03 21:12:43 sthen Exp $

COMMENT =	display coverage stats online via coveralls.io

MODPY_EGG_VERSION =	1.6.0
DISTNAME =	coveralls-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	4

CATEGORIES =	devel

HOMEPAGE =	https://github.com/coagulant/coveralls-python

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR ?=

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-docopt${MODPY_FLAVOR} \
			devel/py-coverage${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/coveralls ${PREFIX}/bin/coveralls${MODPY_BIN_SUFFIX}

.include <bsd.port.mk>
