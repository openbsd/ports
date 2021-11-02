# $OpenBSD: Makefile,v 1.10 2021/11/02 00:02:38 sthen Exp $

COMMENT =		markdown to reStructuredText converter

MODPY_EGG_VERSION =	0.2.1

DISTNAME =		m2r-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
