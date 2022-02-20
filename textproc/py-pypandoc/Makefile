# $OpenBSD: Makefile,v 1.3 2022/02/20 15:05:11 bket Exp $

COMMENT =		Python wrapper for pandoc

MODPY_EGG_VERSION =	1.6.4

DISTNAME =		pypandoc-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

CATEGORIES =		textproc

MAINTAINER =		Solene Rapenne <solene@perso.pw>

HOMEPAGE =		https://github.com/bebraw/pypandoc

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		textproc/pandoc

PORTHOME =		${WRKDIR}

# 23 tests pass
TEST_DEPENDS =		devel/py-pip${MODPY_FLAVOR} \
			devel/py-wheel${MODPY_FLAVOR} \
			print/texlive/texmf,-main \
			textproc/pandoc

.include <bsd.port.mk>
