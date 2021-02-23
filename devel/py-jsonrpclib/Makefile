# $OpenBSD: Makefile,v 1.8 2021/02/23 19:39:19 sthen Exp $

COMMENT =		json-rpc over http

MODPY_EGG_VERSION =	0.1.7
DISTNAME =		jsonrpclib-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		devel


# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_PI =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
