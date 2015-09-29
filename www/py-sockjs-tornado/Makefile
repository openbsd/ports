# $OpenBSD: Makefile,v 1.3 2015/09/29 10:53:17 sthen Exp $

COMMENT =		sockjs python server implementation for tornado

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		sockjs-tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
