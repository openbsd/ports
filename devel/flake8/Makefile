# $OpenBSD: Makefile,v 1.10 2017/01/04 18:39:22 shadchin Exp $

COMMENT =		modular python code checker wrapping pep8 and pyflakes

MODPY_EGG_VERSION =	3.2.1
DISTNAME =		flake8-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://gitlab.com/pycqa/flake8

MAINTAINER =		Bertrand Janin <b@janin.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test \
			devel/py-mock

RUN_DEPENDS =		devel/py-codestyle \
			devel/py-configparser \
			devel/py-enum34 \
			devel/py-mccabe \
			devel/pyflakes

BUILD_DEPENDS =		devel/py-test-runner

do-test:
	cd ${WRKSRC} && PYTHONPATH=src ${MODPY_BIN} -m pytest tests

.include <bsd.port.mk>
