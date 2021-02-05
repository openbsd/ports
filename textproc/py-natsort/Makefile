# $OpenBSD: Makefile,v 1.19 2021/02/05 09:30:26 jasper Exp $

COMMENT =		simple yet flexible natural sorting

MODPY_EGG_VERSION =	7.1.1
DISTNAME =		natsort-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		textproc devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

# could also make use of 'fastnumbers'
RUN_DEPENDS =		textproc/py-ICU${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-pathlib${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR}

.include <bsd.port.mk>
