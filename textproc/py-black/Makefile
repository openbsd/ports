# $OpenBSD: Makefile,v 1.13 2022/02/28 15:01:03 sthen Exp $

COMMENT =		python code formatter

MODPY_EGG_VERSION =	19.3b0
DISTNAME =		black-${MODPY_EGG_VERSION}
PKGNAME =		py-black-${MODPY_EGG_VERSION:S/b/beta/}
REVISION =		4

CATEGORIES =		textproc devel

HOMEPAGE =		https://github.com/ambv/black

# MIT
PERMIT_PACKAGE=	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-appdirs${MODPY_FLAVOR} \
			devel/py-attrs${MODPY_FLAVOR} \
			devel/py-click${MODPY_FLAVOR} \
			textproc/py-toml${MODPY_FLAVOR}
TEST_DEPENDS =		www/py-aiohttp${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR =	python3

.include <bsd.port.mk>
