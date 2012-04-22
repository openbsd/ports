# $OpenBSD: Makefile,v 1.6 2012/04/22 12:15:23 jasper Exp $

COMMENT =	rapid web application development framework

# "Pylons 1.0 series is stable and production ready."
MODPY_EGG_VERSION = 1.0.1
DISTNAME =	Pylons-${MODPY_EGG_VERSION}rc1
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://www.pylonshq.com/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=P/Pylons/}

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
REGRESS_DEPENDS = ${RUN_DEPENDS} \
		  devel/py-coverage \
		  www/py-genshi \
		  www/py-jinja2 \
		  ${PKGNAME}:${BASE_PKGPATH}

MODPY_SETUPTOOLS = Yes

do-regress:
	cd ${WRKSRC} && env PYTHONPATH=. ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
