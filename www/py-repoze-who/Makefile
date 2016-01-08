# $OpenBSD: Makefile,v 1.7 2016/01/08 13:08:22 ajacoutot Exp $

COMMENT =	identification and authentication framework for WSGI

MODPY_EGG_VERSION = 2.2
DISTNAME =	repoze.who-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/./-/}
REVISION =	1

CATEGORIES =	www devel

# BSD-derived
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =	Yes

MODULES =	lang/python

MODPY_SETUPTOOLS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-repoze-who
	${INSTALL_DATA} ${WRKSRC}/README.rst \
		${PREFIX}/share/doc/py-repoze-who

.include <bsd.port.mk>
