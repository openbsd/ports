# $OpenBSD: Makefile,v 1.22 2021/11/02 00:01:38 sthen Exp $

COMMENT =	tool to automatically build BGP route server configurations

MODPY_EGG_VERSION =	1.11.0
DISTNAME =	arouteserver-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	net

HOMEPAGE =	https://arouteserver.readthedocs.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		net/aggregate6 \
			net/bgpq4 \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

NO_TEST =		Yes # needs work

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
