# $OpenBSD: Makefile,v 1.3 2017/03/05 18:25:25 shadchin Exp $

COMMENT =		autocompletion tool for Python

MODPY_EGG_VERSION =	0.10.0
PKGNAME =		py-${DISTNAME}

GH_ACCOUNT=		davidhalter
GH_PROJECT=		jedi
GH_TAGNAME=		v${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		https://github.com/davidhalter/jedi

MAINTAINER =		Alexandr Shadchin <shadchin@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

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
