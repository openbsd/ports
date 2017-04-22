# $OpenBSD: Makefile,v 1.4 2017/04/22 21:57:42 shadchin Exp $

COMMENT =		autocompletion tool for Python

MODPY_EGG_VERSION =	0.10.2
DISTNAME =		jedi-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/davidhalter/jedi

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR}

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
