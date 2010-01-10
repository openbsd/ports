# $OpenBSD: Makefile,v 1.1.1.1 2010/01/10 13:17:18 fgsch Exp $

COMMENT =	rapid web application development framework

MODPY_EGG_VERSION = 0.9.7
DISTNAME =	Pylons-${MODPY_EGG_VERSION}
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

RUN_DEPENDS =	::devel/py-decorator \
		::devel/py-nose \
		::www/py-beaker \
		::www/py-formencode \
		::www/py-mako \
		::www/py-paste \
		::www/py-paste-deploy \
		::www/py-paste-script \
		::www/py-routes \
		::www/py-tempita \
		::www/py-weberror \
		::www/py-webhelpers \
		::www/py-webob \
		::www/py-webtest
REGRESS_DEPENDS = ${RUN_DEPENDS} \
		  ::devel/py-coverage \
		  ::www/py-genshi \
		  ::www/py-jinja2 \
		  :${PKGNAME}:${BASE_PKGPATH}

MODPY_SETUPTOOLS = Yes

do-regress:
	cd ${WRKSRC} && env PYTHONPATH=. ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
