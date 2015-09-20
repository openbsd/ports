# $OpenBSD: Makefile,v 1.11 2015/09/20 09:52:44 benoit Exp $

COMMENT =	web error handling and exception catching

MODPY_EGG_VERSION = 0.11
DISTNAME =	WebError-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

RUN_DEPENDS =	textproc/py-pygments \
		www/py-paste \
		www/py-tempita \
		www/py-webob
TEST_DEPENDS = ${RUN_DEPENDS} \
		  devel/py-nose \
		  www/py-webtest

MODPY_SETUPTOOLS =	Yes

pre-build:
	chmod 644 ${WRKSRC}/WebError.egg-info/*

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
