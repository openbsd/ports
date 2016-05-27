# $OpenBSD: Makefile,v 1.1.1.1 2016/05/27 16:35:24 danj Exp $

COMMENT =		http client/server for asyncio

MODPY_EGG_VERSION =	0.22.0a0
DISTNAME =		aiohttp-${MODPY_EGG_VERSION}
PKGNAME =		py3-${DISTNAME}
CATEGORIES =		www

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		textproc/py-chardet${MODPY_FLAVOR} \
			www/py3-multidict
TEST_DEPENDS =		${RUN_DEPENDS} \
			devel/py-test${MODPY_FLAVOR} \
			www/py-gunicorn${MODPY_FLAVOR}

.include <bsd.port.mk>
