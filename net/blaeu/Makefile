# $OpenBSD: Makefile,v 1.10 2021/10/16 20:43:05 denis Exp $

COMMENT =	create measurements on RIPE Atlas probes.

MODPY_EGG_VERSION = 1.1.7
DISTNAME =	blaeu-${MODPY_EGG_VERSION}
CATEGORIES =	net

MAINTAINER =	Denis Fondras <denis@openbsd.org>

HOMEPAGE =	https://framagit.org/bortzmeyer/blaeu

# 2-clause BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		net/py-dnspython${MODPY_FLAVOR} \
			net/py-cymruwhois${MODPY_FLAVOR} \
			security/py-openssl${MODPY_FLAVOR}

BUILD_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
