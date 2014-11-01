# $OpenBSD: Makefile,v 1.1.1.1 2014/11/01 20:48:39 abieber Exp $

COMMENT =		sockjs python server implementation for tornado

MODPY_EGG_VERSION =	1.0.1
DISTNAME =		sockjs-tornado-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		www

HOMEPAGE =		https://github.com/MrJoes/sockjs-tornado/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/sockjs-tornado/}

MODULES =		lang/python

RUN_DEPENDS +=		www/py-tornado

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
