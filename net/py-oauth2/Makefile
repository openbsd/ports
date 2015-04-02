# $OpenBSD: Makefile,v 1.2 2015/04/02 14:21:16 jasper Exp $

COMMENT =	Python library for OAuth

MODPY_EGG_VERSION = 1.5.211
DISTNAME =	oauth2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	net
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	http://github.com/simplegeo/python-oauth2

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	www/py-httplib2

.include <bsd.port.mk>
