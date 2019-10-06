# $OpenBSD: Makefile,v 1.1.1.1 2019/10/06 20:33:43 sthen Exp $

COMMENT =	tool to automatically build BGP route server configurations

MODPY_EGG_VERSION =	0.22.1
DISTNAME =	arouteserver-${MODPY_EGG_VERSION}

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

#NO_TEST =		Yes # needs work

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

.include <bsd.port.mk>
