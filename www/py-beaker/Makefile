# $OpenBSD: Makefile,v 1.1.1.1 2010/01/10 12:59:22 fgsch Exp $

COMMENT =	session and caching library with wsgi middleware

MODPY_EGG_VERSION = 1.5.1
DISTNAME =	Beaker-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:L}

CATEGORIES =	www devel

HOMEPAGE =	http://beaker.groovie.org/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=B/Beaker/}

MODULES =	lang/python

REGRESS_DEPENDS = ::databases/py-sqlalchemy \
		  ::devel/py-nose \
		  ::www/py-webtest

MODPY_SETUPTOOLS = Yes

do-regress:
	cd ${WRKSRC} && env PYTHONPATH=. ${LOCALBASE}/bin/nosetests

.include <bsd.port.mk>
