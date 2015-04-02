# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:18 jasper Exp $

COMMENT =		sockjs python server implementation for tornado

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		sockjs-tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/MrJoes/sockjs-tornado/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		www/py-tornado

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
