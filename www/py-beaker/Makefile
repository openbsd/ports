# $OpenBSD: Makefile,v 1.6 2011/06/08 18:15:29 rpointel Exp $

COMMENT =	session and caching library with wsgi middleware

MODPY_EGG_VERSION = 1.5.4
REVISION =	0
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

RUN_DEPENDS =	security/py-crypto
REGRESS_DEPENDS = databases/py-sqlalchemy \
		  devel/py-coverage \
		  devel/py-nose \
		  misc/py-memcached \
		  www/py-webtest \
		  ${RUN_DEPENDS}

MODPY_SETUPTOOLS = Yes

# needs a running memcached instance in 127.0.0.1:11211
REGRESS_IS_INTERACTIVE = Yes

pre-regress:
	perl -pi -e 's|pycryptopp,||g' ${WRKSRC}/setup.py

.include <bsd.port.mk>
