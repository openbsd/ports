# $OpenBSD: Makefile,v 1.15 2019/07/12 20:51:03 sthen Exp $

COMMENT =	web error handling and exception catching

MODPY_EGG_VERSION = 0.11
DISTNAME =	WebError-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	2

CATEGORIES =	www devel

# MIT
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

RUN_DEPENDS =	textproc/py-pygments \
		www/py-paste \
		www/py-tempita \
		www/py-webob
TEST_DEPENDS =	devel/py-nose \
		www/py-webtest

MODPY_SETUPTOOLS =	Yes

pre-build:
	chmod 644 ${WRKSRC}/WebError.egg-info/*

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
