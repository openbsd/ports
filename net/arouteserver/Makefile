# $OpenBSD: Makefile,v 1.19 2021/08/21 10:23:14 sthen Exp $

COMMENT =	tool to automatically build BGP route server configurations

MODPY_EGG_VERSION =	1.10.0
DISTNAME =	arouteserver-${MODPY_EGG_VERSION}

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
