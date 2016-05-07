# $OpenBSD: Makefile,v 1.1.1.1 2016/05/07 14:48:39 danj Exp $

COMMENT =		simple DNS resolver for asyncio

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		aiodns-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net

MAINTAINER =		Daniel Jakots <obsd@chown.me>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		net/py-cares${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
RUN_DEPENDS += devel/py-trollius
.endif

TEST_DEPENDS =		${RUN_DEPENDS}

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
