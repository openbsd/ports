# $OpenBSD: Makefile,v 1.5 2018/07/15 23:04:32 shadchin Exp $

COMMENT =		autocompletion tool for Python

MODPY_EGG_VERSION =	0.12.1
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
			devel/py-test${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if !${FLAVOR:Mpython3}
TEST_DEPENDS +=		devel/py-docopt \
			devel/py-typing
.else
TEST_ARGS =		--ignore=test/test_evaluate/flask-site-packages
.endif

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} -m pytest ${TEST_ARGS} jedi test

.include <bsd.port.mk>
