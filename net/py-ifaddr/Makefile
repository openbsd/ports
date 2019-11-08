# $OpenBSD: Makefile,v 1.4 2019/11/08 22:00:56 kmos Exp $

COMMENT=		enumerate IP addresses on the local network adapters

MODPY_EGG_VERSION=	0.1.6
DISTNAME=		ifaddr-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		net

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	ifaddr

FLAVORS =		python3
FLAVOR ?=

.if ! ${FLAVOR:Mpython3}
RUN_DEPENDS +=		net/py-ipaddress
.endif

.include <bsd.port.mk>
