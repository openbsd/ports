# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:44 sthen Exp $

COMMENT =		simple DNS resolver for asyncio

# Cannot go to >=2.0.0 if we need python 2.x support
MODPY_EGG_VERSION =	1.2.0
DISTNAME =		aiodns-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
CATEGORIES =		net
REVISION =		1

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

RUN_DEPENDS =		net/py-cares${MODPY_FLAVOR}
.if !${FLAVOR:Mpython3}
RUN_DEPENDS += 		devel/py-trollius \
			devel/py-typing
.endif

do-test:
	@cd ${WRKSRC} && ${MODPY_BIN} -m unittest discover

.include <bsd.port.mk>
