# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:03 sthen Exp $

COMMENT =		sockjs python server implementation for tornado

MODPY_EGG_VERSION =	1.0.2
DISTNAME =		sockjs-tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/MrJoes/sockjs-tornado/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		www/py-tornado

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
