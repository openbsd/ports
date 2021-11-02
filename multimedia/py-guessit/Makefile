# $OpenBSD: Makefile,v 1.2 2021/11/02 00:01:38 sthen Exp $

COMMENT =	guess information from video filenames

MODPY_EGG_VERSION =	3.3.1

DISTNAME =	guessit-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

CATEGORIES =	multimedia

HOMEPAGE =	https://doc.guessit.io/

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	guessit

BUILD_DEPENDS =	devel/py-test-runner${MODPY_FLAVOR}
RUN_DEPENDS =	devel/py-dateutil${MODPY_FLAVOR} \
		misc/py-babelfish${MODPY_FLAVOR} \
		textproc/py-rebulk${MODPY_FLAVOR}>=3
TEST_DEPENDS =	textproc/py-yaml${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
