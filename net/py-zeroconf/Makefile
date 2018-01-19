# $OpenBSD: Makefile,v 1.1.1.1 2018/01/19 22:23:58 jung Exp $

COMMENT =		pure Python Multicast DNS Service Discovery Library

MODPY_EGG_VERSION =	0.19.1
DISTNAME =		zeroconf-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		net

MAINTAINER =		Joerg Jung <jung@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR} \
			net/py-netifaces${MODPY_FLAVOR}

.if ! ${FLAVOR:Mpython3}
RUN_DEPENDS+=		devel/py-enum34
.endif

NO_TEST =		Yes

.include <bsd.port.mk>
