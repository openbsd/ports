# $OpenBSD: Makefile,v 1.16 2020/07/03 21:13:14 sthen Exp $

COMMENT =		simple yet flexible natural sorting

MODPY_EGG_VERSION =	7.0.1
DISTNAME =		natsort-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

# could also make use of 'fastnumbers'
RUN_DEPENDS =		textproc/py-ICU${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-hypothesis${MODPY_FLAVOR} \
			devel/py-pathlib${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR}

post-install:
	mv ${PREFIX}/bin/natsort{,${MODPY_BIN_SUFFIX}}

.include <bsd.port.mk>
