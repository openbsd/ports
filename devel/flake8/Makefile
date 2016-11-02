# $OpenBSD: Makefile,v 1.6 2016/11/02 18:19:05 shadchin Exp $

COMMENT =		modular python code checker wrapping pep8 and pyflakes

MODPY_EGG_VERSION =	3.0.4
DISTNAME =		flake8-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://gitlab.com/pycqa/flake8

MAINTAINER =		Bertrand Janin <b@janin.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test \
			devel/py-mock

RUN_DEPENDS =		devel/py-codestyle \
			devel/py-configparser \
			devel/py-enum34 \
			devel/py-mccabe \
			devel/pyflakes

do-test:
	touch ${WRKSRC}/tox.ini
	cd ${WRKSRC} && PYTHONPATH=src ${MODPY_BIN} -m pytest tests

.include <bsd.port.mk>
