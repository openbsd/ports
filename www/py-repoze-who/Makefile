# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:48 espie Exp $

COMMENT =	identification and authentication framework for WSGI

MODPY_EGG_VERSION = 2.0
DISTNAME =	repoze.who-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}

CATEGORIES =	www devel
HOMEPAGE =	http://pypi.python.org/pypi/repoze.who

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=r/repoze.who/}

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-repoze-who
	${INSTALL_DATA} ${WRKSRC}/README.txt \
		${PREFIX}/share/doc/py-repoze-who

.include <bsd.port.mk>
