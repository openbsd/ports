# $OpenBSD: Makefile,v 1.6 2018/11/07 08:16:09 ajacoutot Exp $

COMMENT =		autocompletion tool for Python

MODPY_EGG_VERSION =	0.13.1
DISTNAME =		jedi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		http://jedi.readthedocs.io

MAINTAINER =		Elias M. Mariani <marianielias@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		devel/py-parso${MODPY_FLAVOR}

TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-docopt${MODPY_FLAVOR} \
			devel/py-colorama${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest ${TEST_ARGS} jedi test

.include <bsd.port.mk>
