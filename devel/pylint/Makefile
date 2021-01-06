# $OpenBSD: Makefile,v 1.35 2021/01/06 10:19:25 sthen Exp $

COMMENT =		lint-like code checker for Python code

MODPY_EGG_VERSION =	2.6.0
DISTNAME=		pylint-${MODPY_EGG_VERSION}
REVISION=		0

CATEGORIES=		devel

HOMEPAGE=		https://www.pylint.org/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-astroid${MODPY_FLAVOR}>=2.4 \
			devel/py-isort${MODPY_FLAVOR} \
			devel/py-mccabe${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}

TEST_DEPENDS = 		devel/py-logilab-common${MODPY_FLAVOR}>=1.3.0

FLAVORS =		python3
FLAVOR =		python3

FULLPKGNAME =		${PKGNAME:S/pylint/pylint3/}

.include <bsd.port.mk>
