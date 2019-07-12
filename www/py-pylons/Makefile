# $OpenBSD: Makefile,v 1.12 2019/07/12 20:51:02 sthen Exp $

COMMENT =	rapid web application development framework

# "Pylons 1.0 series is stable and production ready."
MODPY_EGG_VERSION = 1.0.2
DISTNAME =	Pylons-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}
REVISION =	0

CATEGORIES =	www devel

HOMEPAGE =	http://www.pylonshq.com/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =	Yes
MODPY_PI_DIR =	P/Pylons

MODULES =	lang/python

RUN_DEPENDS =	devel/py-decorator \
		devel/py-nose \
		devel/py-simplejson \
		www/py-beaker \
		www/py-formencode \
		www/py-mako \
		www/py-paste>=1.7.5.1 \
		www/py-paste-deploy>=1.5.0 \
		www/py-paste-script>=1.7.4.2 \
		www/py-routes \
		www/py-tempita \
		www/py-weberror \
		www/py-webhelpers \
		www/py-webob \
		www/py-webtest
TEST_DEPENDS =	devel/py-coverage \
		www/py-genshi \
		www/py-jinja2 \
		${PKGNAME}:${BASE_PKGPATH}

MODPY_SETUPTOOLS = Yes

do-test:
	cd ${WRKSRC} && env PYTHONPATH=. ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
