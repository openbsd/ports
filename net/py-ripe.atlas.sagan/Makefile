# $OpenBSD: Makefile,v 1.4 2016/03/14 09:34:37 florian Exp $

COMMENT =		parsing library for RIPE Atlas measurement results

MODPY_EGG_VERSION =	1.1.10
DISTNAME =		ripe.atlas.sagan-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

HOMEPAGE =		https://github.com/RIPE-NCC/ripe.atlas.sagan

MAINTAINER=		Florian Obser <florian+ports@narrans.de>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

RUN_DEPENDS =		devel/py-dateutil \
			devel/py-tz \
			net/py-IP \
			security/py-openssl

TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
