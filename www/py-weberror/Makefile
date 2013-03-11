# $OpenBSD: Makefile,v 1.8 2013/03/11 11:44:48 espie Exp $

COMMENT =	web error handling and exception catching

MODPY_EGG_VERSION = 0.10.3
DISTNAME =	WebError-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=W/WebError/}

MODULES =	lang/python

RUN_DEPENDS =	textproc/py-pygments \
		www/py-paste \
		www/py-tempita \
		www/py-webob \
		${MODPY_JSON}
TEST_DEPENDS = ${RUN_DEPENDS} \
		  devel/py-nose \
		  www/py-webtest

MODPY_SETUPTOOLS =	Yes

pre-build:
	chmod 644 ${WRKSRC}/WebError.egg-info/*

do-test:
	cd ${WRKSRC} && ${LOCALBASE}/bin/nosetests lib tests

.include <bsd.port.mk>
