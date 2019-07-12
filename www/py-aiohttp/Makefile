# $OpenBSD: Makefile,v 1.8 2019/07/12 20:51:00 sthen Exp $

COMMENT =		http client/server for asyncio

MODPY_EGG_VERSION =	3.5.4
DISTNAME =		aiohttp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		0

# Apache2
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

# only py-chardet isn't python3 only
RUN_DEPENDS =		devel/py-async-timeout \
			textproc/py-chardet${MODPY_FLAVOR} \
			www/py-multidict \
			www/py-yarl
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			www/py-gunicorn${MODPY_FLAVOR}

# we don't have any port for pytest-{xdist,timeout}
NO_TEST =		Yes

.include <bsd.port.mk>
