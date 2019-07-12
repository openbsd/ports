# $OpenBSD: Makefile,v 1.8 2019/07/12 21:07:46 sthen Exp $

COMMENT =	Python library for OAuth

MODPY_EGG_VERSION = 1.9.0.post1
DISTNAME =	oauth2-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	net
REVISION =	0

HOMEPAGE =	http://github.com/simplegeo/python-oauth2

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python
MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	www/py-httplib2
TEST_DEPENDS =	devel/py-mock \
		devel/py-coverage

.include <bsd.port.mk>
