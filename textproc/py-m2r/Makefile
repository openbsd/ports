# $OpenBSD: Makefile,v 1.8 2021/02/16 23:02:07 sthen Exp $

COMMENT =		markdown to reStructuredText converter

MODPY_EGG_VERSION =	0.1.6

DISTNAME =		m2r-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		2

CATEGORIES =		devel textproc

HOMEPAGE =		https://github.com/miyakogi/m2r

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		textproc/py-mistune${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
