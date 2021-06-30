# $OpenBSD: Makefile,v 1.6 2021/06/30 16:12:42 fcambus Exp $

COMMENT =		source code spelling checker

MODPY_EGG_VERSION =	2.1.0

DISTNAME =		codespell-${MODPY_EGG_VERSION}

CATEGORIES =		devel textproc

HOMEPAGE =		https://github.com/codespell-project/codespell

# GPLv2
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	codespell_lib

RUN_DEPENDS =		textproc/py-chardet${MODPY_FLAVOR}

TEST_DEPENDS =		${FULLPKGNAME}:${FULLPKGPATH} \
			devel/py-test-cov${MODPY_FLAVOR}

.include <bsd.port.mk>
