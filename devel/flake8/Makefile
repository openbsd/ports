# $OpenBSD: Makefile,v 1.5 2015/12/28 17:28:20 jca Exp $

COMMENT =		modular python code checker wrapping pep8 and pyflakes

MODPY_EGG_VERSION =	2.5.1
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
			devel/py-nose \
			devel/py-mock

RUN_DEPENDS =		devel/pep8 \
			devel/py-mccabe \
			devel/pyflakes

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests --first-package-wins

.include <bsd.port.mk>
