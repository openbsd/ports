# $OpenBSD: Makefile,v 1.1.1.1 2012/07/17 19:30:50 landry Exp $

COMMENT =	identification and authentication framework for WSGI

MODPY_EGG_VERSION = 2.0
DISTNAME =	repoze.who-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}

CATEGORIES =	www devel
HOMEPAGE =	http://pypi.python.org/pypi/repoze.who

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=r/repoze.who/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-repoze-who
	${INSTALL_DATA} ${WRKSRC}/README.txt \
		${PREFIX}/share/doc/py-repoze-who

.include <bsd.port.mk>
