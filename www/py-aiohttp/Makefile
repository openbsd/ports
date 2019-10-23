# $OpenBSD: Makefile,v 1.9 2019/10/23 12:42:57 sthen Exp $

COMMENT =		http client/server for asyncio

MODPY_EGG_VERSION =	3.5.4
DISTNAME =		aiohttp-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		www
REVISION =		1

# Apache2
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		devel/py-attrs${MODPY_FLAVOR} \
			textproc/py-chardet${MODPY_FLAVOR} \
# these are py3 only
RUN_DEPENDS +=		devel/py-async-timeout \
			www/py-multidict \
			www/py-yarl
TEST_DEPENDS =		devel/py-test${MODPY_FLAVOR} \
			www/py-gunicorn${MODPY_FLAVOR}

# we don't have any port for pytest-{xdist,timeout}
NO_TEST =		Yes

.include <bsd.port.mk>
