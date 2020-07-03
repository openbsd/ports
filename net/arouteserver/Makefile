# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:59 sthen Exp $

COMMENT =	tool to automatically build BGP route server configurations

MODPY_EGG_VERSION =	0.26.0
DISTNAME =	arouteserver-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	net

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE =	https://arouteserver.readthedocs.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

RUN_DEPENDS =		net/aggregate6 \
			net/bgpq3 \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

NO_TEST =		Yes # needs work

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_PYTEST =		Yes

.include <bsd.port.mk>
