# $OpenBSD: Makefile,v 1.13 2019/11/14 06:55:13 jasper Exp $

COMMENT =		simple yet flexible natural sorting

MODPY_EGG_VERSION =	6.2.0
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
FLAVOR ?=

# could also make use of 'fastnumbers'
RUN_DEPENDS =		textproc/py-ICU${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/natsort{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
