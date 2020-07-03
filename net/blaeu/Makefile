# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:59 sthen Exp $

COMMENT =	create measurements on RIPE Atlas probes.

MODPY_EGG_VERSION = 1.1.6
DISTNAME =	blaeu-${MODPY_EGG_VERSION}
CATEGORIES =	net
REVISION =	0

MAINTAINER =	Denis Fondras <denis@openbsd.org>

HOMEPAGE =	https://framagit.org/bortzmeyer/blaeu

# 2-clause BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		net/py-dnspython${MODPY_FLAVOR} \
			net/py-cymruwhois${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR}

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
