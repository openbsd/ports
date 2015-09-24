# $OpenBSD: Makefile,v 1.3 2015/09/24 17:37:40 jca Exp $

COMMENT =		identity management for flask

MODPY_EGG_VERSION =	0.4.0
REVISION =		0
DISTNAME =		Flask-Principal-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME:L}

CATEGORIES =		www

HOMEPAGE =		https://pythonhosted.org/Flask-Principal/

MAINTAINER =		Aaron Bieber <abieber@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

RUN_DEPENDS +=		www/py-flask

MODPY_SETUPTOOLS =	Yes

.include <bsd.port.mk>
