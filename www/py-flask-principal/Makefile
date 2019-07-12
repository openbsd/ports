# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:01 sthen Exp $

COMMENT =		identity management for flask

MODPY_EGG_VERSION =	0.4.0
REVISION =		1
DISTNAME =		Flask-Principal-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www

HOMEPAGE =		https://pythonhosted.org/Flask-Principal/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		www/py-flask

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
