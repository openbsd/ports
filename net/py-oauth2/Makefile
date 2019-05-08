# $OpenBSD: Makefile,v 1.6 2019/05/08 13:49:47 danj Exp $

COMMENT =	Python library for OAuth

MODPY_EGG_VERSION = 1.9.0.post1
DISTNAME =	oauth2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	net
REVISION =	0

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
