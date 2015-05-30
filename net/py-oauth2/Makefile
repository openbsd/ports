# $OpenBSD: Makefile,v 1.3 2015/05/30 09:42:37 czarkoff Exp $

COMMENT =	Python library for OAuth

MODPY_EGG_VERSION = 1.5.211
DISTNAME =	oauth2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0
CATEGORIES =	net
MAINTAINER =	Johan Huldtgren <jhuldtgren@gmail.com>

HOMEPAGE =	http://github.com/simplegeo/python-oauth2

# MIT
PERMIT_PACKAGE_CDROM =  Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	www/py-httplib2
TEST_DEPENDS =	devel/py-mock \
		devel/py-coverage \
		${RUN_DEPENDS}

.include <bsd.port.mk>
