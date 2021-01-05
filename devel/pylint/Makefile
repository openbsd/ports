# $OpenBSD: Makefile,v 1.34 2021/01/05 04:37:20 kn Exp $

COMMENT =		lint-like code checker for Python code

MODPY_EGG_VERSION =	2.6.0
DISTNAME=		pylint-${MODPY_EGG_VERSION}
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

post-install:
.for i in epylint pylint pyreverse symilar
	mv ${PREFIX}/bin/$i{,${MODPY_BIN_SUFFIX}}
.endfor

.include <bsd.port.mk>
